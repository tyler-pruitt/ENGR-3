%initialize global parameters B,k
global B k
B = 0.01;
k = 0.008;

%initialize time span (28 days)
tspan = [0 28];

%set up initial conditions: [S0,Z0,R0]
x0 = [190;10;0];

%solve the system of equations and extract solutions
[tsoln,xsoln] = ode23(@szrf,tspan,x0);

%plot S vs. t, Z vs. t, and R vs. t in same graph
plot(tsoln,xsoln(:,1))
hold on
plot(tsoln,xsoln(:,2))
plot(tsoln,xsoln(:,3))
%include x-axis label, title, and legend
xlabel('t (days)')
title('SZR Model')
legend('S(t)','Z(t)','R(t)')
hold off