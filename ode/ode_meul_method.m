function [y] = ode_meul_method(fun, x, y0)
% Modified Euler's Method
% y(k) = y(k-1) + (f(x(k-1), y(k-1)) ...
%                + f(x(k), y^{Eul}(k))*h/2
% Assuming uniform spacing in array x.
drl = length(x);
h = x(2) - x(1);
y = nan*zeros(drl, 1);
y(1) = y0;
for k=2:drl
    y_eul = y(k-1) + fun(x(k-1), y(k-1))*h;
    y(k) = y(k-1) + (fun(x(k-1), y(k-1)) + ...
                     fun(x(k), y_eul))*h/2;
end

end