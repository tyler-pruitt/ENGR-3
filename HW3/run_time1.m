N = 100000000;
a = ones(1,N);
b = 2*ones(1,N);

for i = 1:N
    c(i) = a(i) * b(i);
end