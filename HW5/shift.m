function s = shift(S, dist, axis)
%function takes in matrix S, a distance dist, and an axis as inputs and
%returns the same matrix shifted a distance dist along the axis
if axis == 'x'
    %make a copy of the matrix
    s = S;
    %add dist to the first row of s
    s(1,:) = s(1,:) + dist;
elseif axis == 'y'
    %make a copy of the matrix
    s = S;
    %add dist to the second row of s
    s(2,:) = s(2,:) + dist;
elseif axis == 'z'
    %make a copy of the matrix
    s = S;
    %add dist to the third row of s
    s(3,:) = s(3,:) + dist;
end
end