% Un sistema OUVW ha sido girado -53.00º alrededor del eje 0Y,y posteriormente trasladado un vector p1 = (-5.00, -1.00, -1.00),
% y luego ha sido girado 59.00º alrededor del eje 0Z y trasladado un vector p2 = (-7.00, -3.00, -4.00) con respecto al sistema 0XYZ.
% Calcular las coordenadas (rx, ry, rz) del vector r con coordenadas ruvw = (-4.00, -1.00, -7.00)

close all; clear all; clc

p1 = [-5, -1, -1]';
p2 = [-7, -3, -4]';

theta_y = -53;
theta_z = 59;

r_uvw = [-4, -1, -7, 1]';

% Crear las matrices de rotación
R_y = [roty(theta_y) [0 0 0]'; 0 0 0 1];  % Rotación alrededor de Y
R_z = [rotz(theta_z) [0 0 0]'; 0 0 0 1];  % Rotación alrededor de Z

% Crear las matrices de traslación
T1 = [eye(3) p1; 0 0 0 1]; % Traslación p1
T2 = [eye(3) p2; 0 0 0 1]; % Traslación p2

% Aplicar las transformaciones
T_total = T2 * R_z * T1 * R_y;

% Aplicar la transformación total al vector r_uvw
r_xyz = T_total * r_uvw;

% Mostrar las coordenadas resultantes en el sistema 0XYZ
disp('Las coordenadas del vector r en el sistema 0XYZ son:');
disp(r_xyz(1:3));