function []=zpfft(data,fs,zpfactor)
data=data(:).';
data=data';
if nargin < 3
  zpfactor=8;
end
if nargin < 2
  fs=8000;
end
length=max(size(data));
fft_length=length*zpfactor;
half_length=fft_length/2+1;

d2=hanning(length).*data;
subplot(2,1,1);
plot(d2);
axis([0,length,1.1*min(d2),1.1*max(d2)]);
title('Time Domain (samples)');

fa=20*log10(abs(fft(d2,fft_length)));
f=[1:half_length]*fs/2/half_length;
subplot(2,1,2);
plot(f,fa(1:half_length));
axis([0,fs/2,0.9*min(fa),1.1*max(fa)]);
xlabel('Hz');
title('Frequency Domain (Hz)');
