function f = randnum_reject(a,b,c)
%takes as input three integers a,b,c and outputs a random integer that is 
%equally likely to take any value between a,b (inclusive) but not return c

%initialize number of possible integers can be returned
interval = abs(b-a);

%set lowest integer of a and b as low
if a < b
    low = a;
else
    low = b;
end

%generate randum number between a and b in interval [a,b] or [b,a]
r = interval*rand+low;

if r < c
    %round down to nearest integer
    f = floor(r);
else
    %round up to nearest integer
    f = ceil(r);
end
end