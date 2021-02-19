global k m b

k = 3;
m = 1;
b = 0.5;

X0 = [1.5;0];
tspan = [0 10];
[tsoln,Xsoln] = ode23(@spring,tspan,X0);

%initialize variables KE, PE, and E
KE = (1/2)*m*(Xsoln(:,2).^2);
PE = (1/2)*k*(Xsoln(:,1).^2);
E = KE + PE;

%plot KE vs. t in blue, PE vs. t in red, and E vs. t in green
figure(1)
plot(tsoln,KE,'b')
hold on
plot(tsoln,PE,'r')
plot(tsoln,E,'g')
%add legend, x-axis label, and title
legend('KE','PE','E')
xlabel('t')
title('Damped Harmonic Oscillations')
hold off