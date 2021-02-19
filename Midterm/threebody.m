load 3body.mat

%initialize time and time step
t = 0;
dt = 0.0005;

%while the neither of the two ending conditions are met
while sqrt((x(2) - x(3))^2 + (y(2) - y(3))^2) <= 3 && t < 1000
    %compute the acceleration at this time value
    [ax,ay] = compute_acceleration(masses, x, y);
    %compute the new positions and velocities
    [x, y, vx, vy] = euler_step(x, y, vx, vy, ax, ay, dt);
    %loop over all possible half-second times
    for n = 0:1:2000
        %if t is very close to or equal to a half-second time: simulate the
        %dynamics
        if abs(t-0.5*n) < 0.001
            draw_3body(x, y)
        end
    end
    %increment time by dt
    t = t + dt;
end