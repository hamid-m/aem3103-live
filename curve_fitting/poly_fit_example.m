%% Load CL vs AoA Data
data = load('../data/VariEze_CL.txt');
aoa_deg = data(:, 1);
CL = data(:, 2);

% Rename input variables
x = aoa_deg;
y = CL;

figure
hold on
ords = [1, 2, 3, 4, 5, 6];

for i = 1:length(ords)
    ord = ords(i);
    subplot(2, 3, i);
    hold on;

    % Plot original data
    plot(x, y, 'k.');

    % Fit Multiple Polynomials to the Data
    p = polyfit(x, y, ord);
    y_fit = polyval(p, x);

    % Plot the data with the curve-fit
    plot(x, y_fit);

    if i == 1
        xlabel("Angle of Attack (deg)");
        ylabel("C_L");
    end
    title(['Poly Order: ', num2str(ord)]);

    % Calculate Residual
    r = sum((y - y_fit).^2);
    disp(['Ord: ', num2str(ord), ...
          ' resid: ', num2str(r)]);


end
