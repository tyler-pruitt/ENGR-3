function g = fibloop(n)
%FIBLOOP  Fibonacci sequence using a for loop
%   g = FIBONACCI(n) generates the first n Fibonacci numbers.
g = zeros(n,1);
%set up initial conditions
g(1) = 1;
g(2) = 1;
g(3) = 2;
for k = 4:n
   %the nth fibonacci number is the n-1 + the n-3
    g(k) = g(k-1) + g(k-3);
end