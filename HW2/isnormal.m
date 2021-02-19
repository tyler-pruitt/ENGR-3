function f = isnormal(A)
%isnormal takes as input a matrix A, and checks to see if A times the
%transpose of A is equal to the transpose of A times A, if they are equal
%it displays "normal", else it displays "not normal"
if A*A' == A'*A
    disp('normal')
else
    disp('not normal')
end
end
