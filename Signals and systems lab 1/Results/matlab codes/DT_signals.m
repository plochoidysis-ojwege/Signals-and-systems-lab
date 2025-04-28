%  Discrete-Time (DT) Signals
n = -10:10;
% Impulse function
delta_n = (n == 0);
% Step function
u_n = (n >= 0);
% Square impulse (nonzero for n = 0,1,2,3,4)
square_n = (n >= 0) & (n < 5);
% Discrete exponential
exp_n = exp(1j * pi * n / 5);
% Discrete cosine (added as a missing subplot)
cos_n = cos(pi * n / 5);
% Plot DT signals in a 2x3 grid so all signals are visible.
figure;
subplot(2,3,1); stem(n, delta_n, 'filled'); title('Impulse Function');
subplot(2,3,2); stem(n, u_n, 'filled'); title('Step Function');
subplot(2,3,3); stem(n, square_n, 'filled'); title('Square Impulse');
subplot(2,3,4); stem(n, real(exp_n), 'filled'); title('Discrete Exponential');
subplot(2,3,5); stem(n, cos_n, 'filled'); title('Discrete Cosine');
% Optionally, leave subplot(2,3,6) empty or use for additional info
subplot(2,3,6); axis off; text(0.1,0.5,'DT Signals','FontSize',12);