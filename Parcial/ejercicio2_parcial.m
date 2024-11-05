% Un sistema OUVW ha sido girado -171.00º alrededor del eje 0Z, posteriormente trasladado un vector p1 = (-5.00, -6.00, -8.00),
% y finalmente ha sido girado -115.00º alrededor del eje 0Y 
% Calcular las coordenadas (rx, ry, rz) del vector r con coordenadas ruvw = (-5.00, -9.00, -4.00

close all; clear all; clc

p1 = [-5, -6, -8]';

theta_z = -171;
theta_y = -115;

r_uvw = [-5, -9, -4, 1]';

% Matrices de rotación
R_z = [rotz(theta_z) [0 0 0]'; 0 0 0 1];  % Rotación alrededor de Z
R_y = [roty(theta_y) [0 0 0]'; 0 0 0 1];  % Rotación alrededor de Y

% Matriz de traslación p1
T1 = [eye(3) p1; 0 0 0 1]; 

% Aplicar las transformaciones
T_total = R_y * T1 * R_z;

% Aplicar la transformación total al vector r_uvw
r_xyz = T_total * r_uvw;

disp('Las coordenadas del vector r en el sistema 0XYZ son:');
disp(r_xyz(1:3));