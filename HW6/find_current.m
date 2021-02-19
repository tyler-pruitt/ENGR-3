function I = find_current(V,R1,R2,R3)
%function takes Voltage and R1,R2,R3 as inputs and outputs a column vector of current: [I1;I2;I3;I4]

%RI = v
R = [-1 1 1 0; 0 1 1 -1; R1 0 R3 0; R1 R2 0 0];
v = [0; 0 ; V; V];

%output a column vector of the currents
I = R \ v;
end