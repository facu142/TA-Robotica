% Un sistema OUVW ha sido trasladado un vector p = (-2.00, -9.00, 0.00) con respecto al sistema 0XYZ,
% y posteriormente girado 46.00º alrededor del eje 0Y.
% Calcular las coordenadas (rx, ry, rz) del vector r con coordenadas ruvw = (-2.00, -5.00, -5.00)

close all; clear all; clc

% Parámetros
p = [-2.00 -9.00 0.00]'; % Traslación
theta = 46; % Rotación alrededor del eje Y en grados
uvw = [-2.00 -5.00 -5.00 1]';

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