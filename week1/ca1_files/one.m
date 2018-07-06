
%
% read in the data
%
fid = fopen('sample.bin','r');
data = fread(fid,'short');
fclose(fid);

%
% cut three smaller pieces for analysis
%
wash=data(22301:25330);
wa=data(22301:23700);
a=data(23100:23299);
sh=data(23501:25330);

%
% plot different time scales
%
figure(1);
subplot(2,1,1);
plot(data);
title('Once you finish greasing your chain, be sure to wash thoroughly');
subplot(2,1,2);
plot(wash);
title('wash');

figure(2);
subplot(2,1,1);
plot(wa);
title('wa');
subplot(2,1,2);
plot(a);
title('a');

