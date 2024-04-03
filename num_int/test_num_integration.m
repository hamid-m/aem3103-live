% Test script for numerical integration
clc;
clear;

% Test Case: Function
f = @(x) -sin(x) + 1;
fi = @(x) cos(x) + 1*x;
a = 0;
b = 2*pi;
N = 500; % Number of intervals

h = (b-a)/N;
xrng = a:h:b; % Size: N+1

assert(length(xrng) == N+1);

fi_exact = fi(b) - fi(a);
% Options:
%  fi_num = num_integration(f, a, b, N);
%  fi_num = num_integration(x, y);
fi_num = num_integration(f, a, b, N, "rec");

% TODO: Add assert-based test.  This is now
%       a visual test.
err = abs(fi_exact - fi_num);
fprintf("Error: %5.3g \n", err);

% Test Case: Discrete Data Points
x = [0, 1, 2, 3, 4, 5];
y = x.^2;
fi_num = num_integration(x, y, "rec");
fprintf('Discrete Test fi_num: %5.3g \n', fi_num);


