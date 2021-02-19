%initialize N as number of trials
N = 100000;
%for efficiency, make space in x
x = zeros(N,1);

%looping over number of trials
for i = 1:N
    %test randnum_reject(11,20,15) and record ans in x
    x(i) = randnum_reject(11,20,15);
end

%display results in a histogram
hist(x,11:20);