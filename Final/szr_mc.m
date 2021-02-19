%count the total number of human wins and the total number of trials
humans_win = 0;
trials = 1000;

%establish parameters for simulation
B = 0.01;
k = 0.008;
dt = 0.01;

%loop over the number of trials
for N = 1:trials
    %establish same initial conditions for each trial
    S = 190;
    Z = 10;
    R = 0;
    %run trial until either Z = 0 or S = 0 (zombies win or humans win)
    while S ~= 0 && Z ~= 0
        %establish random number
        r = rand;
        if r < B*S*Z*dt
            %(1) zombie infests human
            S = S - 1;
            Z = Z + 1;
        elseif r > 1-k*S*Z*dt
            %(2) human kills zombie
            Z = Z - 1;
            R = R + 1;
        else
            %no interaction occurs
        end
    end
    %if humans win (zombies are all dead: Z = 0)
    if Z == 0
        %record human win
        humans_win = humans_win + 1;
    end
end

%probility = (num of times success) / (num of trials)
prob_humans_win = humans_win / trials