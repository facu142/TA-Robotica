close all; clear all; clc

l1 = 7.90;		
l2 = 4.10;			
l3 = 4.40;
l4 = 2.60;
q1 = pi/4;	
q2= -pi/2;		
q3= -pi/2;
d4= 1.00;
q5= deg2rad(-22.50);
q6= pi/4;

% Parámetros D-H
q = [q1 q2 q3 0 q5 0];
d = [l1 0 0 l3+d4 0 l4];
a = [0 l2 0 0 0 0];
alfa = [-pi/2 0 pi/2 -pi/2 pi/2 0];

% Matrices de transformación homogénea
A01 = matrizDenavitHartenberg(q(1), d(1), a(1), alfa(1));
A12 = matrizDenavitHartenberg(q(2), d(2), a(2), alfa(2));
A23 = matrizDenavitHartenberg(q(3), d(3), a(3), alfa(3));
A34 = matrizDenavitHartenberg(q(4), d(4), a(4), alfa(4));
A45 = matrizDenavitHartenberg(q(5), d(5), a(5), alfa(5));
A56 = matrizDenavitHartenberg(q(6), d(6), a(6), alfa(6));

% Modelo cinemático directo
T = A01 * A12 * A23 * A34 * A45 * A56;

disp(T);