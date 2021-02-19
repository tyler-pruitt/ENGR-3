load raw_data.mat

%initialize the amount of pertubation that will be allowable in data
epsilon = 0.005;

%create a copy of signal to filter outliers
filter = signal;

for i = 500:700
    %initialize average with current values and average w/o current values
    mean_w_curr(i) = sum(signal(i-2:i+2)) / 5;
    mean_wo_curr(i) = (sum(signal(i-2:i-1)) + sum(signal(i+1:i+2))) / 4;
    if abs(mean_w_curr(i) - mean_wo_curr(i)) > epsilon
        %replace outlier with average without outlier
        filter(i) = mean_wo_curr(i);
    end
end

%plot original signal (sensor data) in red from 500 to 700
plot(500:700, signal(500:700), 'r')
hold on
%plot filtered sensor data in blue from 500 to 700
plot(500:700, filter(500:700), 'b')