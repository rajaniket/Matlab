% Design FIR filter 
clc;
clear;
close all;
m=input('oreder of the filter :');
w=input('cut-off frequency =');
b=input('beta value=');
k=kaiser(m,b);
disp 'the kaiser window cofficent are';
disp(k);
hn=fir1(m-1,w,k);
disp 'the unit sample response of fir filter is ' ;
disp(hn);
freqz(hn,1,512);
grid on;
xlabel('normalized frequency');
ylabel(,magnitude in db');
