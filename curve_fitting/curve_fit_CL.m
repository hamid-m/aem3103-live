%% Load data
data = load('../data/VariEze_CL.txt');
disp('Raw data preview:');
disp(data(1:5, :));
aoa_deg = data(:, 1);
CL = data(:, 2);

%% Visualize data
figure;
plot(aoa_deg, CL);
xlabel('Angle of Attack (deg)');
ylabel('C_L');
hold on

%% Define and fit a model
% Trim to linear region of data.
m = aoa_deg < 22;
x = aoa_deg(m);
y = CL(m);

% Fit the model.
p = polyfit(x, y, 1);
disp('MATLAB Poly. Coefficients:')
disp(p);

% Use own implementation: y(x) = a1*x + a0
n = length(x);
Sx = sum(x);
Sy = sum(y);
Sxy = sum(x.*y);
Sxx = sum(x.*x);
Syy = sum(y.*y);
a1 = (n*Sxy - Sx*Sy)/(n*Sxx - Sx^2);
a0 = (Sxx*Sy - Sxy*Sx)/(n*Sxx - Sx^2);
disp('Own implementation coeff:');
disp([a1, a0]);

% Estimate CL using model
y_fit = polyval(p, aoa_deg);
% y_fit = p(1)*x + p(2)


%% Visualize the result

plot(x, y,'*k');
plot(aoa_deg, y_fit, '-m');

