% find Transfer function of blocks in series 
clc;
clear;
close all;
n1=[0 5];
d1=[1 1 5];
n2=[0 2];
d2=[0 1 2];
[ns,ds]=series(n1,d1,n2,d2); %series blocks
printsys(ns,ds);

