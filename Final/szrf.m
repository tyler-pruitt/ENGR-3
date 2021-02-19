function x_dot = szrf(t,x)
%function computes S_dot, Z_dot, R_dot

%import parameters B,k
global B k
%compute S_dot,Z_dot,R_dot
x_dot = [-B*x(1)*x(2);(B-k)*x(1)*x(2);k*x(1)*x(2)];
end