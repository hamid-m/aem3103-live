% Setup Problem
x = 60;   % ft
v0 = 50;  % ft/s
hQ = 6.5; % ft
g = 32.2; % ft/s^2

f = @(theta_deg) x * tand(theta_deg) ...
    - 0.5*x^2*g/v0^2./cosd(theta_deg).^2 ...
    + hQ - 7;

% Visualize & Select an Interval
thetas_deg = 1:70;
figure
hold on;
plot(thetas_deg, f(thetas_deg));
grid on;
xlabel('\theta^\circ');
ylabel('f(\theta)');

a = 20; b = 40;
plot([a, b], [0, 0], 'LineWidth', 2);
% Bisection Algorithm

% View Result
