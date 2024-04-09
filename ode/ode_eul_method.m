function [y] = ode_eul_method(fun, x, y0)
% Euler's Method
% y(k) = y(k-1) + f(x(k-1), y(k-1))*h
% Assuming uniform spacing in array x.
drl = length(x);
h = x(2) - x(1);
y = nan*zeros(drl, 1);
y(1) = y0;
for k=2:drl
    y(k) = y(k-1) + fun(x(k-1), y(k-1))*h;
end

end