%%  ITESS-TICS
%%  29 - Mayo - 2026
%%  MATEMÁTICAS APLICADAS A COMUNICACIONES
%%  Docente: Dr. Motecillo Puente Francisco Javier
%%  Alumno: Flores Torres Miguel Angel TI-401
%%  Matricula: TI24110044
%%  Tema 3 - 4
%%
%%  Descripción: Simulación de respuesta para un control PI

pkg load control
clear
clc

s = tf('s');

% Valores comerciales
R2 = 10e3;
R3 = 2.2e3;
R4 = 22e3;
C2 = 100e-9;

% Controlador PI
G = (R4/R3)*((R2*C2*s + 1)/(R2*C2*s));

% Mostrar función de transferencia
G

% Respuesta al escalón
step(G)
grid on
title('Respuesta PI')
