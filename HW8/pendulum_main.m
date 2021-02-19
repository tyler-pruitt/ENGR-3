%initialize global variables
global M L b g
M = 1;
L = 2;
b = 0.5;
g = 10;

%initialize time interval
tspan = [0 20];

%initial conditions
theta_0 = [0.5; 0];
theta_1 = [3.14; 0];
theta_2 = [0; 5];

%solve the ODE for different initial conditions theta_0, theta_1, theta_2
[tsoln_0, thetasoln_0] = ode23(@pendulum,tspan,theta_0);
[tsoln_1, thetasoln_1] = ode23(@pendulum,tspan,theta_1);
[tsoln_2, thetasoln_2] = ode23(@pendulum,tspan,theta_2);

%extract only the position solutions out of the ode23 output
theta_soln_0 = thetasoln_0(:,1);
theta_soln_1 = thetasoln_1(:,1);
theta_soln_2 = thetasoln_2(:,1);

%animate the three solutions
figure(1)
animate(tsoln_0,theta_soln_0)
figure(2)
animate(tsoln_1,theta_soln_1)
figure(3)
animate(tsoln_2,theta_soln_2)