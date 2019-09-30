n=size(a);
M=n(1);
N=n(2);
MSE = sum(sum((a-G1).^2))/(M*N);
PSNR = 10*log10(256*256/MSE);