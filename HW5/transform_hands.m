load myhand.mat

figure(1)
dot_to_dot(H)

figure(2)
A = [1, 0; 0, -1];
dot_to_dot(A*H)

figure(3)
B = [cosd(90), -0.5*sind(90); 0.5*sind(90), cosd(90)];
dot_to_dot(B*H)

figure(4)
C = A*B;
dot_to_dot(C*H)

figure(5)
D = -B*A*A;
dot_to_dot(D*H)