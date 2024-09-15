close all; clear all; clc
pkg load symbolic


% Constantes y variables
syms a1 a2 a3 a4 a5 real
syms q1 q2 d3 real
syms alfa2 real

% Parametros de DH
q = [q1 q2 0];
d = [a1 a3 d3+a5];
a = [a2 a4 0];
alfa = [ 0 alfa2 0];

% Matrices de Transf Homog
A01 = matrizDenavitHartenberg(q(1), d(1), a(1), alfa(1));
A12 = matrizDenavitHartenberg(q(2), d(2), a(2), alfa(2));
A23 = matrizDenavitHartenberg(q(3), d(3), a(3), alfa(3))

% Reescribimos A12
alfa2 = pi;
A12 = eval(A12)

% Modelo CD
T = A01 * A12 * A23
Txyz = T(:,4)

% Para determinar la CI
syms  px py pz real;
eq1 = px == Txyz(1)
eq2 = py == Txyz(2)
eq3 = pz == Txyz(3)

% Solucion de d3
d3s = solve(eq3 ,d3)

% Solucion de q2.
px2_py2 = simplify(Txyz(1)^2 + Txyz(2)^2)

eq4 = px^2 * py^2 == px2_py2
q2s = solve(eq4, q2)

% Solucion de q3
syms cq1 sq1 real
eq5 = px == a2*cq1 - a4*sq1*sin(q2) + a4*cq1*cos(q2)
eq6 = py == a2*sq1 + a4*sq1*cos(q2) + a4*sin(q2)*cq1
S = solve(eq5, eq6, cq1, sq1)
tan1s = simplify(S.sq1 /S.cq1)
q1s = atan(tan1s)







