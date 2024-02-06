function [a1, a0] = linear_regression(x, y)
    n = length(x);
    Sx = sum(x);
    Sy = sum(y);
    Sxy = sum(x.*y);
    Sxx = sum(x.*x);
    Syy = sum(y.*y);
    a1 = (n*Sxy - Sx*Sy)/(n*Sxx - Sx^2);
    a0 = (Sxx*Sy - Sxy*Sx)/(n*Sxx - Sx^2);
end