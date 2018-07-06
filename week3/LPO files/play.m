function []=play(data,rate)
saxis([1.1*min(data) 1.1*max(data)]);
if nargin == 2
  sound(data,rate);
end
if nargin == 1
  sound(data,8000);
end

