%Gaussian White Noise signal

N = 100000;
sigma = 5;
xmean = 0;
BINS = 50;
gaussian_signal = sqrt(sigma) * randn(1,length(N)) + xmean;

sn = randn(1,N);
sn = sn - mean(sn);

figure(1)
subplot(2,2,1)
plot (1:N , sn)
title('Gaussian White Noise')
xlabel('Time'); ylabel('Amplitude');

% Estimating PDF (Probability distribution function)

subplot(2,2,2)
[HIST , center1] = hist(sn , BINS) ;
HIST = HIST./N;
bar (center1 , HIST)
title('Histogram of Gaussian noise(normalized)');