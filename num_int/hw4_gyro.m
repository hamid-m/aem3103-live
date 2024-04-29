% Self-Contained Sample Solution for HW4 - AEM3103
% Spring 2024

clc;
clear all;
close all;

% Load the data
%data = load("gyro-dataset\A-known-rotation.csv");
data = load("gyro-dataset\B-unknown-rotation.csv");
t_sec = data(:, 1);
wx_dps = data(:, 2);
wy_dps = data(:, 3);
wz_dps = data(:, 4);
drl = length(t_sec);

% Plot the data
plot(t_sec, wz_dps);

% Remove Bias
% Use the begining.
m = (t_sec > 2) & (t_sec < 5);
bz_dps = mean(wz_dps(m));
wz_dps = wz_dps - bz_dps;

% Apply numerical integration: Rectangular Method
angle_deg = nan*zeros(1, drl);
h = t_sec(2) - t_sec(1);
for i = 2:drl
    angle_deg(i) = h*sum(wz_dps(1:i));
end

% View result
figure;
plot(t_sec, angle_deg);

