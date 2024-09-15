close all; clear all; clc

% Error

r1 = -42; % -42 % eje y
t1 = [-2 -2 -8]';
%% Matriz de transformacion homogenea
T = [roty(r1) t1; 0 0 0 1]
% Calculamos rxyz
ruvw = [-5 -5 -3]';
rxyz = T * ruvw;

