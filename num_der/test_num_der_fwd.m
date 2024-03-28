% Test script for Numerical Derivative
% Finite Forward Difference
clc;
clear;
close all;

% Trig Test
x = 0:0.01:2*pi;
y = cos(x);
yp = -sin(x);

yp_num = num_der_fwd(x, y);

figure; hold on;
plot(x, yp);
plot(x, yp_num);
legend('exact', 'numerical');

err = max(abs(yp - yp_num));
disp(err);
assert(err < 0.01);

% Polynomial Test
x = 0:0.01:2;
y = x.^3 + x.^2 - x + 2;
yp = 3*x.^2 + 2*x - 1;

yp_num = num_der_fwd(x, y);
yp_num_cen = num_der_central(x, y);

figure; hold on;
plot(x, yp);
plot(x, yp_num);
plot(x, yp_num_cen);
legend('exact', 'numerical', 'central');
err = max(abs(yp - yp_num));
disp(err);
assert(err < 0.1);

