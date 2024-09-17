% Un sistema OUVW ha sido girado -132.00º alrededor del eje 0Y,y posteriormente trasladado un vector p1 = (0.00, -4.00, -9.00),
% y luego ha sido girado 160.00º alrededor del eje 0X y trasladado un vector p2 = (-7.00, -6.00, -1.00) con respecto al sistema 0XYZ.
% Calcular las coordenadas (rx, ry, rz) del vector r con coordenadas ruvw = (-9.00, -9.00, -8.00)

close all; clear all; clc

p1 = [0, -4, -9]';
p2 = [-7, -6, -1]';

theta_y = -132;
theta_x = 160;

r_uvw = [-9, -9, -8, 1]';

% Crear las matrices de rotación
R_y = [roty(theta_y) [0 0 0]'; 0 0 0 1];  % Rotación alrededor de Y
R_x = [rotx(theta_x) [0 0 0]'; 0 0 0 1];  % Rotación alrededor de X

% Crear las matrices de traslación
T1 = [eye(3) p1; 0 0 0 1]; % Traslación p1
T2 = [eye(3) p2; 0 0 0 1]; % Traslación p2

% Aplicar las transformaciones: Traslación seguida de rotación
T_total = T2 * R_x * T1 * R_y;

% Aplicar la transformación total al vector r_uvw
r_xyz = T_total * r_uvw;

% Mostrar las coordenadas resultantes en el sistema 0XYZ
disp('Las coordenadas del vector r en el sistema 0XYZ son:');
disp(r_xyz(1:3));