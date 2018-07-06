function []=play(data,rate)
if nargin == 0
  error('play use: play(data,rate);');
end
saxis([1.1*min(data) 1.1*max(data)]);
if nargin == 2
  sound(data,rate);
end
if nargin == 1
  sound(data,8000);
end