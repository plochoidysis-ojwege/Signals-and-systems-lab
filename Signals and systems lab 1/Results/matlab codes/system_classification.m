%  Linearity and Time-Invariance (CT)
t = 0:0.01:5;
x1 = sin(2*pi*t);
x2 = cos(2*pi*t);
y1 = x1 + circshift(x1, 100);
y2 = x2 + circshift(x2, 100);
y3 = x1 + x2 + circshift(x1 + x2, 100);
is_linear_ct = isequal(y1 + y2, y3);
% Linearity and Time-Invariance (DT) 
n = 0:50;
x1_dt = sin(2*pi*n/10);
x2_dt = cos(2*pi*n/10);
y1_dt = x1_dt + circshift(x1_dt, 10);
y2_dt = x2_dt + circshift(x2_dt, 10);
y3_dt = x1_dt + x2_dt + circshift(x1_dt + x2_dt, 10);
is_linear_dt = isequal(y1_dt + y2_dt, y3_dt);
% Causality and Stability
% For CT System: Integral from -∞ to t (example representation)
syms tau t_sym;
x_tau = exp(-tau);
y_t = int(x_tau, tau, -inf, t_sym); % This is an example; in practice, a CT system's causality is determined by its impulse response.
% For DT System: Summation from -∞ to n (example representation)
syms k n_sym;
x_k = k^2;
y_n = symsum(x_k, k, -inf, n_sym); % Example sum (diverges, but used here illustratively)
% Checking causality (using the signal domains)
is_causal_ct = all(t >= 0); % System is causal if t >= 0 (for t vector defined earlier)
is_stable_ct = energy_x_ct < inf; % System is stable if it has finite energy
is_causal_dt = all(n >= 0); % System is causal if n >= 0
is_stable_dt = energy_x_dt < inf; % System is stable if it has finite energy
% Display system classification results
disp(['System is Linear (CT): ', num2str(is_linear_ct)]);
disp(['System is Linear (DT): ', num2str(is_linear_dt)]);
disp(['System is Causal (CT): ', num2str(is_causal_ct)]);
disp(['System is Causal (DT): ', num2str(is_causal_dt)]);
disp(['System is Stable (CT): ', num2str(is_stable_ct)]);
disp(['System is Stable (DT): ', num2str(is_stable_dt)]);
