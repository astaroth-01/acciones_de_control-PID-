pkg load control

% Valores de los componentes
R1 = 2000;
R2 = 2000;
R3 = 2000;
C1 = 47e-9;

S = tf('s');

% Integral
G = R3/(R2*R1*C1*S);

figure;
step(G);
grid on;
title('Respuesta al esccalón del controlador integral');
