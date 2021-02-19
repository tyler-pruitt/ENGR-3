function [ax,ay] = compute_acceleration(masses, x, y)
%function takes in masses and initial positions as inputs and returns the
%instantaneous gravitational accelerations of each mass

%initialize the x and y distances between the three objects
x12 = x(2) - x(1);
x13 = x(3) - x(1);
x23 = x(3) - x(2);
y12 = y(2) - y(1);
y13 = y(3) - y(1);
y23 = y(3) - y(2);

%compute the distances between the objects
r12 = sqrt(x12^2+y12^2);
r13 = sqrt(x13^2+y13^2);
r23 = sqrt(x23^2+y23^2);

%compute the accelearations for object 1
ax(1) = x12*masses(2)/(r12^3) + x13*masses(3)/(r13^3);
ay(1) = y12*masses(2)/(r12^3) + y13*masses(3)/(r13^3);

%compute the accelearations for object 2
ax(2) = -x12*masses(1)/(r12^3) + x23*masses(3)/(r23^3);
ay(2) = -y12*masses(1)/(r12^3) + y23*masses(3)/(r23^3);

%compute the accelearations for object 3
ax(3) = -x13*masses(1)/(r13^3) - x23*masses(2)/(r23^3);
ay(3) = -y13*masses(1)/(r13^3) - y23*masses(2)/(r23^3);
end
