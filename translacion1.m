close all; clear all; clc

% Parámetros
p = [0.00 -3.00 -3.00]'; % Traslación
theta = -7.00; % Rotación alrededor del eje Y en grados
uvw = [-1.00 -1.00 -4.00 1]';

% Convertir el angulo a radianes
theta_rad = deg2rad(theta);

% Matriz de rotación alrededor del eje Y
R = roty(theta_rad);

% Matriz de traslación (agregamos la columna de translación a una matriz identidad)
T = [eye(3) p;...
     0 0 0 1];

% Matriz de rotación aplicada
R = [R [0;0;0];...
    0 0 0 1];

% Matriz total de transformación (rotación y traslación)
T_R = R * T;

% Posición del vector uvw en el sistema 0XYZ
rxyz = T_R * uvw
