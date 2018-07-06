function []=play(data,rate)
saxis([1.1*min(data) 1.1*max(data)]);
sound(data,rate);
