function C = digit_compare(A, B)
%function takes two 28x28 matrices A and B as inputs and returns the sum of the
%differences between the corresponding element in A and B

%initialize output
C = 0;

%loop over indices i,j
for i = 1:28
    for j = 1:28
        %sum up the difference between corresponding elements
        C = C + (A(i,j) - B(i,j))^2;
    end
end
end