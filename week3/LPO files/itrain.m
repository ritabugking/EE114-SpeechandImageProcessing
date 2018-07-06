function [x]=itrain(interval,length)
x=zeros(1,length);
for i=1:interval:length,
  x(i)=1;
end

