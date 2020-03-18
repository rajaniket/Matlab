%plot root locous for the transfer function,given zita is equal 0.5 and natural frquency 1.5rad/s
clc;
clear;
close all;
n=[1];
d=[1 5 2 0];
rlocus(n,d); %Root lpocous plot
sgrid(0.5,1.5);
