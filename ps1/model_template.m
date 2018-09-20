function xdot = model_template(~,x)
global F_app C I R T

% Template for state equations. Neville Hogan

% Extract states (just for readability)
v_m = x(1); % v_m
q_b = x(2); % q_b


% State equations (replace with your code)
x1dot = 1.0/I * (F_app - T/C * q_b - R* v_m);
x2dot = T*v_m;

% Return the state derivatives to the ODE solver
xdot = [x1dot; x2dot];