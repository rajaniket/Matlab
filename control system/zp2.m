% plot the zeros and poles of given transfer function, by using function tf2zp
clc;
clear;
close all;
n1=[2 8 6];
d1=[1 6 12 24]
[z,p,k]=tf2zp(n1,d1)
pzmap(n1,d1);
