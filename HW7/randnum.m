function f = randnum(a,b)
%function takes integers a,b as inputs and outputs an integer between a and
%b (inclusive)

%initialize number of possible integers can be returned
interval = abs(b-a) + 1;

%set lowest integer of a and b as low
if a < b
    low = a;
else
    low = b;
end

%generate randum number between a and b in interval [a,b+1] or [b,a+1],
%then round down to nearest integer
f = floor(interval*rand+low);
end