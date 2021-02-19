function g = fibrecursion(n)
%FIBRECURSION  Fibonacci number using recursion
%   FIBRECURSION(n) generates the n-th Fibonacci number.
if n <= 2
   %set up initial conditions (base case)
    g = 1;
else
   %create a recursive call where g(n) = g(n-1) + g(n-3)
    g = fibrecursion(n-1) + fibrecursion(n-3);
end