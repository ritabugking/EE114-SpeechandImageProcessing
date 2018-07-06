function []=zpfft2(data,fs,zpfactor)
length=max(size(data));
fft_length=length*zpfactor;
half_length=fft_length/2+1;

d2=hamming(length).*data;
subplot(2,1,1);
plot(data);
axis([0,length,1.1*min(data),1.1*max(data)]);
title('Time Domain (samples)');

fa=(abs(fft(data,fft_length)));
f=[1:half_length]*fs/2/half_length;
subplot(2,1,2);
plot(f,fa(1:half_length));
axis([0,fs/2,0.9*min(fa),1.1*max(fa)]);
xlabel('Hz');
title('Frequency Domain (Hz)');
