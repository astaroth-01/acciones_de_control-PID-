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

% Definir la planta (ejemplo: sistema de primer orden)
% G(s) = 1 / (s + 1)
numG = 1;
denG = [1 1];
G = tf(numG, denG);

% Parámetros del controlador PI
Kp = 2;   % Ganancia proporcional
Ki = 1;   % Ganancia integral

% Controlador PI: C(s) = Kp + Ki/s
numC = [Kp, Ki];   % Numerador de C(s) = Kp + Ki/s  -> (Kp*s + Ki)/s
denC = [1, 0];     % Denominador: s
C = tf(numC, denC);

% Sistema en lazo cerrado
% T(s) = (C * G) / (1 + C * G)
T = feedback(C * G, 1);

% Graficar la respuesta al escalón
figure;
step(T);
grid on;
title('Respuesta al escalón del sistema de control PI');
xlabel('Tiempo (s)');
ylabel('Amplitud');

% Mostrar información del sistema
disp('Controlador PI:');
disp(C);
disp('Planta:');
disp(G);
disp('Sistema en lazo cerrado:');
disp(T);
