function Q = time_analysis(s,windowtype,Nw,fctn)
% function Q = time_analysis(s,window,type)
%
% time analysis of speech
% windowtype = window type (see "window" in Matlab help), e.g., 'rectwin',
% 'hamming', 'hann', 'bartlett', etc.
% Nw = window length
% type = 1: T[s(n)] = (s(n))^2
%        2: T[s(n)] = |s(n)|
%        3: T[s(n)] = |sgn(s(n)) - sgn(s(n-1))|
N = length(s);
if nargin < 4, fctn = 1; end
if nargin < 3, Nw = N; end
if nargin < 2, window = 'rectwin'; end
switch fctn
    case 1
        y = s.^2;
    case 2
        y = abs(s);
    case 3
        y = abs( (s(2:end)>=0) - (s(1:end-1)>=0) );
        N = N - 1;
    otherwise
        y = s;
end
eval(['w = window(@',windowtype,',Nw);'])
Q = filter(w,1,y);