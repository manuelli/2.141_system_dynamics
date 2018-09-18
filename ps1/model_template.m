function xdot = model_template(~,x)
global F_app T_1 T_2 C I_f I_m

% Template for state equations. Neville Hogan

% Extract states (just for readability)
v_m = x(1); % v_m
q_b = x(2); % q_b


% State equations (replace with your code)
x1dot = 1.0/I_m * (F_app - q_b/(T_1 * T_2 *C) - I_f * v_m);
x2dot = T_1*T_2*v_m;


% Return the state derivatives to the ODE solver
xdot = [x1dot; x2dot];