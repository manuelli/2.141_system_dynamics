g = 9.81;
I_1 = 136;
C_1 = 0.001/(I_1*g);
I_2 = 0.1 * I_1;
omega = 16.7;

K_md = I_2 * omega^2;
K_2 =  10.0/11 * K_md;
K_3 = 1.0/11 * K_md;
C_2 = 1/K_2
C_3 = 1/K_3
% C_3 = 1/(11 * I_2) * omega^2;
% C_2 = 1/10.0*C_3;
R = 0.05;

A = [0, 0, 1, 0; 
    0, 0, 0, 1; 
    -1/(I_1*C_1) - 1/(I_1*C_2), 1/(I_1 *C_2), 0, 0;
    1/(I_2*C_2), -1/(I_2*C_2) - 1/(I_2 * C_3), 0, -R/I_2];



B = [1; 0; 0; 0];
C = [1, 0, 0, 0];
D = 0;

sys = ss(A,B,C,D);
bode(sys)