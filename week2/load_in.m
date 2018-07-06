clear;
%
% read in the data
%
fid = fopen('sample.bin','r');
female_sentence = fread(fid,'short');
fclose(fid);

%
% cut two smaller pieces for analysis
%
female_a=female_sentence(20700:20900);

fid = fopen('male_a.bin','r');
male_a = fread(fid,'short');
fclose(fid);
male_a = male_a(700:900);

whos
