
% Un sistema 0uvw ha sido trasladado un vector p= [-4 -7 -5] con respecto 
% al sistema 0xyz y posteriormente girado 17 grados alrededor del eje 0z
% Calcular las coordenadas rx ry y rz del vector r con coordenadas ruvw 
% [-3 -3 -6]

close all; clear all; clc
p = [-4 -7 -5]'; % translacion
theta = 17; % Rotacion alrededor de z
ruvw = [-3 -3 -6 1]'; % Vector asociado a = 0UVW

% Matriz de translacion
T = [eye(3) p;...
     0 0 0 1];

% Matriz de rotacion
R = [rotz(theta) [0 0 0]';...
        0 0 0 1];

% Translacion seguida de rotacion
T_R = R * T;

% Posicion de ruvw en 0xyz
rxyz = T_R * ruvw


