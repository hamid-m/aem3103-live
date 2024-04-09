clc;
clear all
close all;

% Example Problem: d^2(x)/dt^2 + g cos(x) = 0
% Choose variables:
% v1 = x
% v2 = dx/dt
g = 9.81;
f_dvdt = @(t, v) [v(2); -g*cos(v(1))];

% Define parameters for the problem
v1_0 = 0.1;
v2_0 = 0.0;
t0 = 0;
tend = 3;

% Solve the problem using ODE45
[t_ode, x_ode] = ode45(f_dvdt, [t0 tend], [v1_0 v2_0]);

% Visualize the results
figure;
plot(t_ode, x_ode);
legend('v1(t)', 'v2(t)');