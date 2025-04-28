% Plot Exponential signals (real parts)
figure;
subplot(2,1,1); stem(n, real(exp_k), 'filled'); title(['Exponential: k = ', num2str(k)]);
subplot(2,1,2); stem(n, real(exp_l), 'filled'); title(['Exponential: l = ', num2str(l)]);