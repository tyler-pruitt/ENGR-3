%initialize a row of time values from 0 to 3 incrementing by 0.1
t = 0:0.1:3;

%initialize initial conditions
r_0 = [0 5];
v_0 = [sqrt(7) 10];

%initialize acceleration (gravity)
a = [0, -10];

%calculate x and y values as rows by inserting the time values
x = v_0(1)*t + r_0(1);
y = (1/2)*a(2)*t.^2 + v_0(2) + r_0(2);

%plot x(t) versus y(t) and label the axes and graph
plot(x,y)
xlabel('x')
ylabel('y')
title('Projectile trajectory')
