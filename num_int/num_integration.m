function I = num_integration(varargin)
nargs = length(varargin);
assert(nargs == 5 | nargs == 3)

if nargs == 5
    % num_integration(fun, a, b, N, method)
    fun = varargin{1};
    a = varargin{2};
    b = varargin{3};
    N = varargin{4};
    method = varargin{5};

    % Setup our x, y values
    h = (b-a)/N;
    x = a:h:b;
    y = fun(x);

elseif nargs == 3
    % num_integration(x, y, method)
    x = varargin{1};
    y = varargin{2};
    h = x(2) - x(1); % This could be smarter.
    method = varargin{3};
end
    

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
