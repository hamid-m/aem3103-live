%% Load data
data = load('../data/VariEze_CL.txt');
disp('Raw data preview:');
disp(data(1:5, :));
aoa_deg = data(:, 1);
CL = data(:, 2);

%% Visualize data
figure;
plot(aoa_deg, CL);
xlabel('Angle of Attack (deg)')
ylabel('C_L')

%% Define and fit a model

%% Visualize the result