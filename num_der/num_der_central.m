function [fp_num] = num_der_central(x, y)
drl = length(x);
fp_num = nan*zeros(1, drl);

for i = 2:drl-1
    fp_num(i) = (y(i+1) - y(i-1))/(x(i+1) - x(i-1));
end

end