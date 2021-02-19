%tet1.m

clear;clc;

load tetmesh
TR = triangulation(tet,X);
[FBtri,FBpoints] = freeBoundary(TR);

T = FBtri;
S = FBpoints' - [zeros(1,1079);zeros(1,1079);40*ones(1,1079)];

