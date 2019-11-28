% bode plot of given transfer function
clc;
clear;
close all;
n=[200 600];
d=conv(conv([1,0],[1,2]),[1,4,100]);
w=logspace(-1,3,100);
[mag,phase,w]=bode(n,d,w);
magdb=20*log10(mag);
for i=1:10
    fprintf('%f \t\t\t %f\t\t\t%f\t\t\t\n',magdb(i),phase(i),w(i));
end;
