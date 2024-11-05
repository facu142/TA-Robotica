close all; clear all; clc

% Parámetros en cm
l1 = 10;  % L1
l2 = 5;   % L2
l4 = 1;   % L4
q1 = pi/2; 
q2 = pi/4;
d3 = 8;   % d3
q4 = pi/4;
q5 = -pi/4;

% Parámetros D-H
q = [q1 pi/2+q2 0 q4 q5];
d = [l1 l2 d3 0 l4];
a = [0 0 0 0 0];
alfa = [pi/2 pi/2 -pi/2 pi/2 0];

% Matrices de transformación homogénea
A01 = matrizDenavitHartenberg(q(1), d(1), a(1), alfa(1));
A12 = matrizDenavitHartenberg(q(2), d(2), a(2), alfa(2));
A23 = matrizDenavitHartenberg(q(3), d(3), a(3), alfa(3));
A34 = matrizDenavitHartenberg(q(4), d(4), a(4), alfa(4));
A45 = matrizDenavitHartenberg(q(5), d(5), a(5), alfa(5));

% Modelo cinemático directo
T = A01 * A12 * A23 * A34 * A45;

disp(T);

% Dibujar
% TT = zeros(4, 4, 6); 
% TT(:, :, 1) = eye(4);
% TT(:, :, 2) = A01;
% TT(:, :, 3) = A01 * A12;
% TT(:, :, 4) = A01 * A12 * A23;
% TT(:, :, 5) = A01 * A12 * A23 * A34;
% TT(:, :, 6) = A01 * A12 * A23 * A34 * A45;
% 
% % Llamada a la función para dibujar
% dibujarSistemasDeEjesCoordenadosDeRobot(TT);
% figure;