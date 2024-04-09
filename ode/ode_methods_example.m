% Example of using Euler's Method

% Define ODE
f_dydx = @(x, y) -1.2*y + 7*exp(-0.3*x);
h = 0.005;
x = 0:h:2.5;
drl = length(x);
y0 = 3; % At x=0.

% Assuming y(x=0) = 3
y_exact = 70.0/9*exp(-0.3*x) - 43.0/9*exp(-1.2*x);

% MATLAB Solver: ode45
[x_ode45, y_ode45] = ode45(f_dydx, [x(1) x(end)], y0);

% Euler's Method: Own Implementation
y_eul = ode_eul_method(f_dydx, x, y0);

% Plot results.
figure;
hold on;
plot(x, y_exact, 'k-');
plot(x_ode45, y_ode45, 'k.');
plot(x, y_eul, 'g-');
legend('analytic', 'ode45', sprintf("Euler's Method (h=%g)", h));
xlabel('x'); ylabel('y');





