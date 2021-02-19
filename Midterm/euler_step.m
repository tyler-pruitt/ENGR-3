function [x, y, vx, vy] = euler_step(x, y, vx, vy, ax, ay, dt)
%function takes in positions, velocities, accelerations, and dt as inputs
%and returns the new calculated positions and velocities
x = x + dt*vx;
y = y + dt*vy;
vx = vx + dt*ax;
vy = vy + dt*ay;
end