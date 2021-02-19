%initialize number of trials N
N = 100000;
%initialize number of doors n
n = 4;
%initialize total number of wins for each strategey
num_win_stay = 0;
num_win_switch = 0;

for i = 1:N
    %if "switch strategy" wins
    if montyhall_switch(n) == 1
        %increment num_win_switch
        num_win_switch = num_win_switch + 1;
    end
    %if "stay strategy" wins
    if montyhall_stay(n) == 1
        %increment num_win_stay
        num_win_stay = num_win_stay + 1;
    end
end

%Monte Carlo method: probability of win = wins / (total trials)
prob_win_stay = num_win_stay / N
prob_win_switch = num_win_switch / N