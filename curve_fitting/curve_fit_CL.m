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

% Estimate CL using model
y_fit = polyval(p, x);
% y_fit = p(1)*x + p(2)


%% Visualize the result

plot(x, y,'*k');
plot(x, y_fit, '-m');

