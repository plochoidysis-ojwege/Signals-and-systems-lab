% Continuous-Time (CT) Signals
t = -5:0.01:5;
% Signum function
sgn_t = sign(t);
% Rectangular function (Alternative for rectangularPulse)
rect_t = double(abs(t) <= 0.5);
% Triangular function
tri_t = (1 - abs(t)) .* (abs(t) <= 1);
% Sinc function (Using MATLAB's built-in sinc function)
sinc_t = sinc(t); 
% Plot CT signals
figure;
subplot(2,2,1); plot(t, sgn_t); title('Signum Function');
subplot(2,2,2); plot(t, rect_t); title('Rectangular Function');
subplot(2,2,3); plot(t, tri_t); title('Triangular Function');
subplot(2,2,4); plot(t, sinc_t); title('Sinc Function');

