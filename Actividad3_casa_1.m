close all; clear all; clc

%  Un sistema OUVW ha sido trasladado un vector p = (-1.00, -9.00, -9.00) 
%  con respecto al sistema 0XYZ, y posteriormente girado -52.00º alrededor 
%  del eje 0X.
%  Calcular las coordenadas (rx, ry, rz) del vector r con coordenadas 
%  ruvw = (-8.00, -3.00, -2.00)

% Definir la traslación y la rotación
p = [-1, -9, -9]';  % Vector de traslación
theta = -52;        % Ángulo de rotación en grados alrededor del eje X

% Definir el vector r en el sistema OUVW
r_uvw = [-8, -3, -2, 1]';  % Vector ruvw con el 1 para cálculo homogéneo

% Matriz de traslación (agregando 1 para el cálculo homogéneo)
T = [eye(3) p;...
     0 0 0 1];

% Matriz de rotación usando la función rotx (rotación alrededor del eje X)
R_x = [rotx(theta) [0 0 0]'; 0 0 0 1];

% Multiplicación de la traslación seguida de la rotación
T_R = R_x * T;

% Obtener las coordenadas del vector r en el sistema 0XYZ
r_xyz = T_R * r_uvw;

% Mostrar el resultado
disp('Las coordenadas del vector r en el sistema 0XYZ son:');
disp(r_xyz(1:3));  % Solo mostrar las componentes x, y, z
