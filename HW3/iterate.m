%initialize x values from 0 to 1.5
x = 0:0.01:1.5;
%plot y=cos(x)
plot(x, cos(x))
y = x;
hold on
%plot y=x
plot(x, y)
%insert labels, title, and legend
xlabel('x')
ylabel('y')
title('iterate')
legend('y=cos(x)', 'y=x', 'Location', 'NorthWest')

%reset x for iteration to find where x = cos(x)
clear x
x = 0;
while x < cos(x)
    %increment x slowly until condition is met
    x = x + 0.0001;
end
%print out solution to x=cos(x)
disp(x)