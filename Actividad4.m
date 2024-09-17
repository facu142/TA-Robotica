close all; clear all; clc

% Parámetros
l1 = 5;
l4 = 1;
q1 = pi/4; 
d2 = 1; 
d3 = 1; 
q4 = 0;

% Parámetros D-H
q = [q1 pi/2 0 q4];
d = [l1 d2 d3 l4];
a = [0 0 0 0];
alfa = [0 pi/2 0 0];

% Matrices de transformación homogénea
A01 = matrizDenavitHartenberg(q(1), d(1), a(1), alfa(1));
A12 = matrizDenavitHartenberg(q(2), d(2), a(2), alfa(2));
A23 = matrizDenavitHartenberg(q(3), d(3), a(3), alfa(3));
A34 = matrizDenavitHartenberg(q(4), d(4), a(4), alfa(4));

% Modelo cinemático directo
T = A01 * A12 * A23 * A34;

% Dibujar
TT = zeros(4, 4, 5); % Inicializar la matriz 3D para las transformaciones
TT(:, :, 1) = eye(4); % Matriz identidad
TT(:, :, 2) = A01;
TT(:, :, 3) = A01 * A12;
TT(:, :, 4) = A01 * A12 * A23;
TT(:, :, 5) = A01 * A12 * A23 * A34;

% Llamada a la función para dibujar (asegúrate de definir 'dibujarSistemasDeEjesCoordenadosDeRobot')
dibujarSistemasDeEjesCoordenadosDeRobot(TT);
figure;
