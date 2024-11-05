% Un sistema OUVW ha sido girado 37.00º alrededor del eje 0X, 
% luego ha sido girado -85.00º alrededor del eje 0Y, 
% y finalmente ha sido girado 56.00º alrededor del eje 0X 
% Calcular las coordenadas (rx, ry, rz) del vector r con coordenadas ruvw = (-3.00, -2.00, -5.00)

close all; clear all; clc

theta_x = 37;
theta_y = -85;
theta_x_2 = 56;

r_uvw = [-3, -2, -5, 1]';

% Matrices de rotación
R_x = [rotx(theta_x) [0 0 0]'; 0 0 0 1];
R_y = [roty(theta_y) [0 0 0]'; 0 0 0 1];
R_x_2 = [rotx(theta_x_2) [0 0 0]'; 0 0 0 1];

% Aplicar las rotaciones
T_total = R_x_2 * R_y * R_x;

% Aplicar la transformación total al vector r_uvw
r_xyz = T_total * r_uvw;

disp('Las coordenadas del vector r en el sistema 0XYZ son:');
disp(r_xyz(1:3));
