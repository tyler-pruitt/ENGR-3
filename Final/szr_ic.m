%establish global parameters B,k
global B k
B = 0.008;
k = 0.01;

%establish time span (28 days)
tspan = [0 28];

%initial conditions
S0 = 1;
Z0 = 199;
R0 = 0;

%loop over all combinations of S0,Z0
for i = 1:200
    clear tsoln xsoln
    %establish initial conditions for particular trial
    x0 = [S0;Z0;R0];
    %solve the system of ODEs and extract solutions
    [tsoln,xsoln] = ode23(@szrf,tspan,x0);
    %determine number of rows in xsoln to find location of S(t=28)
    [rows, columns] = size(xsoln);
    %if this trial has S(t=28)>1
    if xsoln(rows,1) > 1
        break
    end
    %increment S0 and decrement Z0 for next trial's initial conditions
    S0 = S0 + 1;
    Z0 = Z0 - 1;
end

%show the smallest integer value of S0 that S(t=28) > 1
disp(S0)