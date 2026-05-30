%% Mary Jose Granados Paniagua - TI401
%%29 / 05 / 2026
%%
%% Controlador P

clear;
clc;
close all;

% cargar paquete de control
pkg load control

% valores de las resistencias
R1 = 10000;
R2 = 20000;
R3 = 10000;
R4 = 20000;

% Ganancia del controlador P
K = (R4*R2) / (R3*R1);

disp('Ganancia k =');
disp(K);

% Función de transferencia
num = [K];
den = [1];

G = tf(num, den);

disp('Función de transferencia');
G

%% Respuesta al escalón
figure(1);
step(G);
grid on;
title('Respuesta al escalón del controlador P');
