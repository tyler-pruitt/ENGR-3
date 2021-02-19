%load in data from setup.m
setup

%move 1: display the three objects on top of each other at their default position
for counter = 0:5:10
   show2(T,S) %display object 1
   hold on
   show2(T,S); %display objects 2,3
   show2(T,S);
   pause(0.05) %give time to display
   clf
end

%move 2: one goes to +80x and the other goes -80x
for counter = 0:5:80 %increment to 80
   show2(T,S) %keep object 1 still
   hold on
   show2(T,shift(S,counter,'x')); %move object 2 +80x
   show2(T,shift(S,-counter,'x')); %move obeject 3 -80x
   pause(0.05) %give time to display
   clf
end

%move 3: the +80x one goes to -80z and the -80x goes to +80z
for counter = 0:5:80
   show2(T,S) %keep object 1 still
   hold on
   show2(T,shift(shift(S,80,'x'),-counter,'z')); %move object 2 -80z
   show2(T,shift(shift(S,-80,'x'),counter,'z')); %move object 3 +80z
   pause(0.05) %give time to display
   clf
end

%move 4: reverse move 3
for counter = 80:-5:0
   show2(T,S) %keep object 1 still
   hold on
   show2(T,shift(shift(S,80,'x'),-counter,'z')); %move object 2 +80z
   show2(T,shift(shift(S,-80,'x'),counter,'z')); %move object 3 -80z
   pause(0.05) %give time to display
   clf
end

%move 5: reverse move 2 to return to the default position
for counter = 80:-5:0
   show2(T,S) %keep object 1 still
   hold on
   show2(T,shift(S,counter,'x')); %move object 2 back to start
   show2(T,shift(S,-counter,'x')); %move object 3 back to start
   pause(0.05) %give time to display
   clf
end