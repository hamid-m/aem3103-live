% Setup Problem
x = 60;   % ft
v0 = 50;  % ft/s
hQ = 6.5; % ft
g = 32.2; % ft/s^2

f = @(theta_deg) x * tand(theta_deg) ...
    - 0.5*x^2*g/v0^2./cosd(theta_deg).^2 ...
    + hQ - 7;
d2r = pi/180;
fp = @(theta_deg) x*d2r/cosd(theta_deg).^2 ...
    - 0.5*x^2*g/v0^2*2*d2r*tand(theta_deg)./cosd(theta_deg).^2;

imax = 10;
tol = 1; % tolerance in solution (deg)

% Visualize & Select an Interval
thetas_deg = 1:70;
figure
hold on;
plot(thetas_deg, f(thetas_deg));
grid on;
xlabel('\theta^\circ');
ylabel('f(\theta)');

% Call our root finding algorithm
x0 = 60;
plot(x0, f(x0), 'r*');


% ALGORITHM
xns = newton_root(f, fp, x0, imax);


% View Result
fprintf("theta: %f\n", xns);
plot(xns, f(xns), 'k*');


