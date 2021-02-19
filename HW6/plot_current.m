%current calculations for incrementing values of R3
%initialize column index j
j = 1;
%initialize an empty data array to record current values for each R3
%each column in I represents the currents for a different R3 value
I = zeros(4,100000);
%loop over all R3 values
for R3 = 0.1:0.1:10000
    %run find_current function for R3 value and store data in column in I
    I(:,j) = find_current(9,100,200,R3);
    %increment j (column index) to move to the next column
    j = j + 1;
end

%assign R3 to the set of values that R3 iterated over
R3 = 0.1:0.1:10000;

%plot figure 1
figure(1)
%plot I2 versus R3
plot(R3,I(2,:))
hold on
%plot I3 versus R3
plot(R3,I(3,:))
%plot I2+I3 versus R3
plot(R3,I(2,:)+I(3,:))
%add axis labels, legend, and title
ylabel('Current I (Amps)')
xlabel('Resistance R3 (Ohms)')
legend('I2','I3','I2+I3')
title('linear current vs. linear resistance graph')
hold off

%plot figure 2
figure(2)
%plot I2 versus log R3
semilogx(R3,I(2,:))
hold on
%plot I3 versus log R3
semilogx(R3,I(3,:))
%plot I2+I3 versus log R3
semilogx(R3,I(2,:)+I(3,:))
%add axis labels, legend, and title
ylabel('Current I (Amps)')
xlabel('Resistance R3 (Ohms)')
legend('I2','I3','I2+I3')
title('linear current vs. logarithmic resistance graph')
hold off