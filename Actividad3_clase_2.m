close all; clear all; clc

% esta mal este

r1 = 54 % eje y
t1 = [1 0 0]'; % translacion 1 [-4 -7 -1]
r2 = -17;
t2 = [-8 -3 -8]';

%% Matriz de Transformacion homogenea

T1 = [roty(r1) t1; 0 0 0 1]
T2 = [rotz(r2) t2; 0 0 0 1]
T = T2 * T1;
ruvw = [-6 -3 -2 1 ]'
rxyz = T * ruvw;

%Ro1 = [roty(r1) [0 0 0]'; 0 0 0 1 ];
%Tr1 = [eye(3) t1]; 0 0 0 1];
%RotTras1 = Tr1 * Ro1



