function f = montyhall_stay(n)
%implements a single round of the “Let’s Make A Deal” game where the
%contestant sticks with their original door;
%takes integer n (num of doors) as input; if the car door matches the 
%contestant’s door function returns 1, otherwise returns 0

%run randnum(1,n) to choose which door has a car behind it
door_car_num = randnum(1,n);

%choice is door 1
if door_car_num == 1
    %car is behind door 1
    f = 1;
else
    %car is not behind door 1
    f = 0;
end
end