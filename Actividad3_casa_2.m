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
disp(r_xyz(1:3));  % Excluir el 1 del resultado homogéneo


% Un sistema OUVW ha sido girado 92.00º alrededor del eje 0Z,
% y posteriormente trasladado un vector p = (-7.00, -3.00, -3.00) con respecto al sistema 0XYZ.
% Calcular las coordenadas (rx, ry, rz) del vector r con coordenadas ruvw = (-8.00, -8.00, -5.00)

close all; clear all; clc

% Definir la traslación y el ángulo de rotación
p = [-7, -3, -3]';  % Traslación p
theta_z = 92;       % Ángulo de rotación alrededor del eje Z

% Definir el vector r en el sistema OUVW
r_uvw = [-8.00, -8.00, -5.00, 1]'; % Añadimos 1 para usar la multiplicación homogénea

% Crear la matriz de rotación alrededor del eje Z
R_z = [rotz(theta_z) [0 0 0]'; 0 0 0 1];  % Matriz de rotación en torno al eje Z

% Crear la matriz de traslación
T = [eye(3) p; 0 0 0 1]; % Matriz de traslación

% Aplicar la transformación completa: rotación seguida de traslación
T_total = T * R_z;

% Aplicar la transformación al vector r_uvw
r_xyz = T_total * r_uvw;

% Mostrar las coordenadas resultantes en el sistema 0XYZ
disp('Las coordenadas del vector r en el sistema 0XYZ son:');
disp(r_xyz(1:3));  % Excluir el 1 del resultado homogéneo

% 3) Un sistema OUVW ha sido trasladado un vector p = (-4.00, -7.00, -5.00) 
% con respecto al sistema 0XYZ, y posteriormente girado 17.00º 
% alrededor del eje 0Z.
% Calcular las coordenadas (rx, ry, rz) del vector r con coordenadas 
% ruvw = (-3.00, -3.00, -6.00)

close all; clear all; clc

% Definicion de la translacion y rotacion
p = [-4 -7 -5]';
theta_z = 17; % Rotacion a lo largo del eje z 

% vector r para el sistema ruvw
r_uvw = [-3 -3 -6 1 ]';

% Crear la matriz de traslacion
T = [eye(3) p; ...
    0 0 0 1];

% Matriz de rotacion
R = [rotz(theta_z) [0 0 0]';...
        0 0 0 1];

% Translacion y luego rotacion
T_R = R*T;

% Posicion de ruvw en 0xyz
rxyz = T_R * r_uvw









