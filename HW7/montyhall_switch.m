function f = montyhall_switch(n)
%implements a single round of the ”Let’s Make A Deal” game where the
%contestant switches their door;

%first choice is door 1

%run randnum(1,n) to choose which door has a car behind it
door_car_num = randnum(1,n);

%choose which door Monty Hall shows constestant (can't be door with car behind it
%and can't be the first choice)
monty_open_door = randnum_reject(2,n,door_car_num);

%make new choice (can't be first choice and can't be the door opened by monty)
choice2 = randnum_reject(2,n,monty_open_door);

if choice2 == door_car_num
    %car is behind second choice door
    f = 1;
else
    %car is not behind second choice door
    f = 0;
end
end