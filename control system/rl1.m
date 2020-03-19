% plot root locus for given transfer 
clc;
clc;
clear;
close all;
n=[1 2];
d=[3 5 7];
rlocus(n,d);%root locous
[r,k]=rlocus(n,d); %root locous
%plot(r,'o');
