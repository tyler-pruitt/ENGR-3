function thetadot = pendulum(t,theta)
%function calculates RHS of pendulum EOM (equation of motion)

%import global variables
global M L b g

%calculate RHS of EOM
thetadot = [theta(2); -(g/L)*sin(theta(1)) - (b/(M*L))*theta(2)];
end