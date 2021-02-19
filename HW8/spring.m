function Xdot = spring(t,X)

global k m b

% define RHS of ODEs
   Xdot = [X(2);-(b/m)*X(2)-(k/m)*X(1)];

end
