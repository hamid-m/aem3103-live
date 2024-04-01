function I = num_integration(varargin)
fun = varargin{1};
a = varargin{2};
b = varargin{3};
N = varargin{4};
if length(varargin) == 4
    method = "rec";
else
    method = varargin{5};
end

%function I = num_integration(fun, a, b, N, method)

% Setup our x, y values
h = (b-a)/N;
x = a:h:b;
y = fun(x);

% Compute numerical integral
if strcmp(method, "rec")
    % Rectangular Method
    I = h*sum(y);
else if strcmp(method, "trap") 
    % Trapezoidal Method (TODO)
    I = nan;
else
    I = nan;
end

end
