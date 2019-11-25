% Plot roots of given transfer function
clc;
clear;
close all;
n1=[8 56 96];
d1=[1 4 9 10 0]
[z,p,k]=tf2zp(n1,d1)
pzmap(n1,d1);
