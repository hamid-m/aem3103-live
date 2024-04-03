clc;
clear all;
close all;

% Load the data
data = load("gyro-dataset\A-known-rotation.csv");
t_sec = data(:, 1);
wx_dps = data(:, 2);
wy_dps = data(:, 3);
wz_dps = data(:, 4);
drl = length(t_sec);

% Plot the data
plot(t_sec, wz_dps);

% Apply numerical integration

angle_deg = nan*zeros(1, drl);
for i = 2:drl
    angle_deg(i) = num_integration(t_sec(1:i), wz_dps(1:i), "rec");
end

% View result
figure;
plot(t_sec, angle_deg);

