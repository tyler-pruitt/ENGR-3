N = [1000000, 10000000, 100000000];
rt1 = [0.171 1.829 18.479]; % for loop
rt2 = [0.012 0.106 1.036]; % .*
plot(N, rt1, '-or')
hold on
plot(N, rt2, '-og')
xlabel('N')
ylabel('time')
legend('for loop', '.*', 'Location', 'NorthWest')