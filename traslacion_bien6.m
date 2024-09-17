% Un sistema OUVW ha sido trasladado un vector p = (-6.00, 0.00, -1.00) con respecto al sistema 0XYZ,
% y posteriormente girado 12.00º alrededor del eje 0Z.
% Calcular las coordenadas (rx, ry, rz) del vector r con coordenadas ruvw = (-4.00, -3.00, -4.00)

close all; clear all; clc

p = [-6, 0, -1]';  % Traslación p
theta_z = 12;       % Ángulo de rotación alrededor del eje Z

% Definir el vector r en el sistema OUVW
r_uvw = [-4.00, -3.00, -4.00, 1]'; % Añadimos 1 para usar la multiplicación homogénea

% Crear la matriz de rotación alrededor del eje Z
R_z = [rotz(theta_z) [0 0 0]'; 0 0 0 1];  % Matriz de rotación en torno al eje Z

% Crear la matriz de traslación
T = [eye(3) p; 0 0 0 1]; % Matriz de traslación

% Aplicar la transformación completa: traslación y luego rotacion
T_total = R_z * T;

% Aplicar la transformación al vector r_uvw
r_xyz = T_total * r_uvw;

% Mostrar las coordenadas resultantes en el sistema 0XYZ
disp('Las coordenadas del vector r en el sistema 0XYZ son:');
disp(r_xyz(1:3));  % Excluir el 1 del resultado homogéneo

