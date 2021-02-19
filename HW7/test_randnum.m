%initialize N as number of trials
N = 100000;
%for efficiency, make space in x
x = zeros(N,1);

%looping over number of trials
for i = 1:N
    %test randnum(1,10) and record ans in x
    x(i) = randnum(1,10);
end

%display results in a histogram
hist(x,1:10);