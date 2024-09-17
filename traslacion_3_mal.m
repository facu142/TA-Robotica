% Un sistema OUVW ha sido girado -163.00º alrededor del eje 0X,
% y posteriormente trasladado un vector p = (-9.00, -1.00, -3.00) con respecto al sistema 0XYZ.
% Calcular las coordenadas (rx, ry, rz) del vector r con coordenadas ruvw = (-6.00, 0.00, -9.00)


close all; clear all; clc

% Parámetros
theta = -163.00; % Rotación alrededor del eje X en grados
p = [-9.00 -1.00 -3.00]'; % Traslación
ruvw = [-6.00 0.00 -9.00 1]'; % Vector en el sistema OUVW (añadimos 1 para compatibilidad con matrices homogéneas)

% Convertir el ángulo a radianes
theta_rad = deg2rad(theta);

% Matriz de rotación alrededor del eje X
R = rotx(theta_rad);

% Matriz de traslación
T = [eye(3) p;...
     0 0 0 1];

% Matriz de rotación aplicada
R_homogeneous = [R [0;0;0];...
                 0 0 0 1];

% Transformación total: rotación y traslación
T_R = T * R_homogeneous; % Primero rotamos y luego trasladamos

% Posición del vector ruvw en el sistema 0XYZ
rxyz = T_R * ruvw