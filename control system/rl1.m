% plot root locus for given transfer 
clc;
clc;
clear;
close all;
n=[1 2];
d=[3 5 7];
rlocus(n,d);
[r,k]=rlocus(n,d)
%plot(r,'o');