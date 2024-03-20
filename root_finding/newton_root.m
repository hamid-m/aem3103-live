function [xns] = newton_root(f, fp, x0, imax)

xns = x0;
for i = 1:imax
    xns = xns - f(xns)/fp(xns);

    % TODO: Add stopping conditions (besides imax)
    
end

end