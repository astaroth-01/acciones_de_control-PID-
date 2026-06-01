pkg load control
S = tf('s');

R1= 1000;
R2 = 1000;
R3 = 1000;
R4 = 1000;

C1 = 1e-6;
C2 = 1e-6;

PID = ((R4*R2)/(R3*R1))*(((R1*C1*S)+1)*((R2*C2*S)+1)/(R2*C2*S));

planta = 1 / (s + 1);

lazoAbierto = PID * planta;

lazoCerrado = feedback(lazoAbierto,1);

figure
step(lazoCerrado)
grid on
title('Respuesta al escalón PID en lazo cerrado')
