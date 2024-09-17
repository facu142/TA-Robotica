% Un sistema OUVW ha sido girado 150.00º alrededor del eje 0Y,
% y posteriormente trasladado un vector p = (-2.00, 0.00, -3.00) con respecto al sistema 0XYZ.
% Calcular las coordenadas (rx, ry, rz) del vector r con coordenadas ruvw = (-9.00, -1.00, 0.00)

close all; clear all; clc

% Definir la traslación y el ángulo de rotación
p = [-2, 0, -3]';  % Traslación p
theta_y = 150;       % Ángulo de rotación alrededor del eje y

% Definir el vector r en el sistema OUVW
r_uvw = [-9.00, -1.00, 0.00, 1]'; % Añadimos 1 para usar la multiplicación homogénea

% Crear la matriz de rotación alrededor del eje y
R_y = [roty(theta_y) [0 0 0]'; 0 0 0 1];  % Matriz de rotación en torno al eje y

% Crear la matriz de traslación
T = [eye(3) p; 0 0 0 1]; % Matriz de traslación

% Aplicar la transformación completa: rotación seguida de traslación
T_total = T * R_y;

% Aplicar la transformación al vector r_uvw
r_xyz = T_total * r_uvw;

% Mostrar las coordenadas resultantes en el sistema 0XYZ
disp('Las coordenadas del vector r en el sistema 0XYZ son:');
disp(r_xyz(1:3));  % Excluir el 1 del resultado homogéneo