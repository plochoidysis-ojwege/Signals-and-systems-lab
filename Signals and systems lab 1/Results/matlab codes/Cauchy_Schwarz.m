% Discrete-Time (DT) Inner Product 
n = 0:9;
x_dt = cos(2*pi*n/10);
y_dt = sin(2*pi*n/10);
inner_dt = sum(x_dt .* conj(y_dt));
% Display DT inner product result
fprintf('DT Inner Product = %.16f\n', inner_dt);
DT Inner Product = -0.0000000000000001
%  Continuous-Time (CT) Inner Product 
t = 0:0.01:1;
x_ct = sin(2*pi*t);
y_ct = cos(2*pi*t);
inner_ct = trapz(t, x_ct .* conj(y_ct));  % Using trapz for numerical integration
% Display CT inner product result
fprintf('CT Inner Product = %.16f\n', inner_ct);
CT Inner Product = 0.0000000000000000
% Energy Calculation
% DT Energy
energy_x_dt = sum(abs(x_dt).^2);
energy_y_dt = sum(abs(y_dt).^2);
% CT Energy
energy_x_ct = trapz(t, abs(x_ct).^2);
energy_y_ct = trapz(t, abs(y_ct).^2);
% Display Energy Results
fprintf('DT Energy of x_dt = %.16f\n', energy_x_dt);
DT Energy of x_dt = 4.9999999999999991
fprintf('DT Energy of y_dt = %.16f\n', energy_y_dt);
DT Energy of y_dt = 5.0000000000000009
fprintf('CT Energy of x_ct = %.16f\n', energy_x_ct);
CT Energy of x_ct = 0.5000000000000000
fprintf('CT Energy of y_ct = %.16f\n', energy_y_ct);
CT Energy of y_ct = 0.5000000000000000
% Power Calculation (Average energy over time) 
power_x_ct = energy_x_ct / (max(t) - min(t));
power_x_dt = energy_x_dt / length(n);
% Display Power Results
fprintf('CT Power of x_ct = %.16f\n', power_x_ct);
CT Power of x_ct = 0.5000000000000000
fprintf('DT Power of x_dt = %.16f\n', power_x_dt);
DT Power of x_dt = 0.4999999999999999
%  Verify Cauchy-Schwarz Inequality 
cauchy_schwarz_dt = abs(inner_dt) <= sqrt(energy_x_dt * energy_y_dt);
cauchy_schwarz_ct = abs(inner_ct) <= sqrt(energy_x_ct * energy_y_ct);
% Display Cauchy-Schwarz Results
disp(['Cauchy-Schwarz DT holds: ', num2str(cauchy_schwarz_dt)]);
disp(['Cauchy-Schwarz CT holds: ', num2str(cauchy_schwarz_ct)]);

