%
% pole_zero - Z-plane pole zero graph and frequency evaluation
%
% bps 1/27/97
%
% arguments the same as freqz():
%	b = numerator polynomial
%	a = denominator polynomial
%	N = number of frequency points evaluated
%	fs = sampling rate
function [] = polezero(b,a,N,fs)
if nargin < 4
  fs=8000;
end
if nargin < 3
  N=512;
end
if nargin < 2
  a=1;
end

%
% set up some complex references
%
subplot(2,2,1);
plot(exp(j*2*pi*[1:1000]/1000),'w');
hold on
plot(0.5*exp(j*2*pi*[1:1000]/1000),'w:');
plot([-1 1],[0 0],'w:');
plot([-j j],'w:');
plot([-1 1],[-1 1],'w:');
plot([-1 1],[1 -1],'w:');
title('Z-plane');
xlabel('Real');
ylabel('Imaginary');

%
% finally plot the poles and zeros
%
t=roots(b);
if ~isempty(t)
   plot(t,'o');
end

t=roots(a);
if ~isempty(t)
   plot(t,'x');
end

grid on,hold off

%
% plot the frequency response
%
N=512;
[H,F]=freqz(b,a,N,fs);
subplot(2,1,2);
plot(F,20*log10(abs(H)));
title('Frequency Response (Magnitude)');
xlabel('Frequency Hz');
ylabel('Magnitude dB');

%
% print out the pole and zero frequencies
%
zero_freq=angle(roots(b))*fs/(2*pi)
pole_freq=angle(roots(a))*fs/(2*pi)
