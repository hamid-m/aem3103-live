% Load the data
T = readtable('n380-car-data-subset.csv')
t = T.TimeFromStart_s_;
ax = T.AccelX_m_s_2_;
vx = T.GNSSVelxX_m_s_;

m = ~isnan(vx);
vx = vx(m);
tvx = t(m);

% Plot the data
figure; hold on;
plot(t, ax)
plot(tvx, vx)

% Compute numerical derivative of GNSS velocity (x)
dvx = num_der_fwd(tvx, vx);

% Compare GNSS-based and Accel-based acceleration (x)
figure; hold on;
plot(t, ax)
plot(tvx, dvx);
legend('Accelerometer', 'GNSS-Based')

