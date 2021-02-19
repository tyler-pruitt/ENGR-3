%load input data
load input.mat

for set = 1:5
    %set represents digit matrix
    for i = 1:10
        %i is digit being compared
        data(i,set) = digit_compare(sample(:,set*28-27:set*28),digit_avg{i});
    end
    %find the index of the smallest number in each column of data
    [M,I] = min(data(:,set));
    %print out the index (the digit)
    disp(I)
end