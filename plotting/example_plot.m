x = 0:0.05:2*pi;
y = cos(x);

figure
%plot(x, y, 'r--');
l_handle = plot(x, y, 'Color', [1, 0, 0], 'LineStyle', '--');
% or: set(l_handle, 'Color', [1, 0, 0]);

% Annotate our plot
xlabel('radians', 'FontSize', 30);
ylabel('y(x)', 'FontSize', 30);
title('Example Plot', 'FontSize', 30);
