N = 10;
n = 0:N-1;
k = 2;
l = N - k;
% Discrete Cosine signals
cos_k = cos(2*pi*k*n/N);
cos_l = cos(2*pi*l*n/N);
% Discrete Exponential signals
exp_k = exp(1j * 2 * pi * k * n / N);
exp_l = exp(1j * 2 * pi * l * n / N);
% Plot Cosine signals
figure;
subplot(2,1,1); stem(n, cos_k, 'filled'); title(['Cosine: k = ', num2str(k)]);
subplot(2,1,2); stem(n, cos_l, 'filled'); title(['Cosine: l = ', num2str(l)]);