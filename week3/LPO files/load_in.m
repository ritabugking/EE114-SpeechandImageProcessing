clear;
%
% read in the data
%
fid = fopen('feesee.bin','r');
feesee = fread(fid,'short');
fclose(fid);
fid = fopen('male_a.bin','r');
male_a = fread(fid,'short');
fclose(fid);
fid = fopen('male_i.bin','r');
male_i = fread(fid,'short');
fclose(fid);
fid = fopen('male_u.bin','r');
male_u = fread(fid,'short');
fclose(fid);

%
% cut two smaller pieces for analysis
%
male_s = feesee(14001:14320);
male_a = male_a(1001:1320);
male_i = male_i(601:920);
male_u = male_u(401:720);

whos
