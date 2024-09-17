% 3) Un sistema OUVW ha sido trasladado un vector p = (-4.00, -7.00, -5.00) 
% con respecto al sistema 0XYZ, y posteriormente girado 17.00º 
% alrededor del eje 0Z.
% Calcular las coordenadas (rx, ry, rz) del vector r con coordenadas 
% ruvw = (-3.00, -3.00, -6.00)

close all; clear all; clc

% Definicion de la translacion y rotacion
p = [-4 -7 -5]';
theta_z = 17; % Rotacion a lo largo del eje z 

% vector r para el sistema ruvw
r_uvw = [-3 -3 -6 1 ]';

% Crear la matriz de traslacion
T = [eye(3) p; ...
    0 0 0 1];

% Matriz de rotacion
R = [rotz(theta_z) [0 0 0]';...
        0 0 0 1];

% Translacion y luego rotacion
T_R = R*T;

% Posicion de ruvw en 0xyz
rxyz = T_R * r_uvw



