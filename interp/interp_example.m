%% Load CL vs AoA Data
data = load('../data/VariEze_CL.txt');
aoa_deg = data(:, 1);
CL = data(:, 2);

% Rename input variables
x = aoa_deg;
y = CL;

figure
hold on

% Plot original data
plot(x, y, 'k.');

% Interpolation
xq = -3:0.1:45
y_interp = interp1(x, y, xq, "spline");

% Plot the data 
plot(xq, y_interp);

