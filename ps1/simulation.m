% Template for time-integration of state equations. Neville Hogan
% I make no claim that this is the best way to proceed but it should work.

clear all, close all;   % clear the decks
global F_app T_1 T_2 C I_f I_m          % pass parameters to the function called below

% System parameters (replace with your code)


T_1 = 0.441786;
T_2 = 0.141471060526;
C = 1/500.0;
I_f = 352.68;
I_m = 0.144;

dx = 0.25
F_app = dx/(T_1*T_2*C);


% Starting state (replace with your code)
x10 = 0;
x20 = 0;

% Nominal simulation time (replace with your code)
tsim = 10;

% Define the simulation time vector
sfrq = 1000;    % sampling frequency--replace with an appropriate value
tvec = (0:1:sfrq*tsim)/sfrq;

% Initial state vector (replace with your code)
x0 = [ x10; x20 ];

% Use ode45 to integrate the state equations
[t, x] = ode45('model_template', tvec, x0);
% Many other integrators are available; see the MATLAB help files

% Extract states (just for readability)
x1 = x(:,1);
x2 = x(:,2);
                  
% Plot results as needed. Here's a state-space trajectory:
figure(1)
plot(x1,x2,'LineWidth',2)
axis equal
xlabel('x_1')
ylabel('x_2')
title('State-Space Trajectory')

figure(2)
plot(t, x2)
ylabel('q_b')
xlabel('t')
title('bellows displacement')

figure(3)
plot(t, x1)
ylabel('v_m')
xlabel('t')
title('piston velocity')

% plot kinetic energy
ke_piston = 1/2*I_m*x1^2;
Q = T_1 * x1; % volume flow rate
ke_fluid = 1/(2*I_fluid)*Q^2;

figure(4)
plot(t, ke_piston)
plot(t, ke_



