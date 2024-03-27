function [fp_num] = num_der_fwd(x, y)
drl = length(x);
fp_num = zeros(1, drl);

for i = 1:drl-1
    fp_num(i) = (y(i+1) - y(i))/(x(i+1) - x(i));
end

% Handle last element
% Neighboring Slope
%fp_num(drl) = fp_num(drl-1);
% Backward Difference
fp_num(drl) = (y(drl) - y(drl-1))/(x(drl) - x(drl-1));



