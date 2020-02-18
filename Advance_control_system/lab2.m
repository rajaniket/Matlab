clc
close all
clear all
n1=[0 0 1];
d1=[1 2 16];
gs=tf(n1,d1);
for z=1:5
    n2=[1 z];
    d2=[0 1];
    ds=tf(n2,d2);
    Gs=gs*ds;
    Gs_CL=feedback(Gs,1);
    step(Gs_CL)
    hold on
    S=stepinfo(Gs_CL);
    TR(z)=S.RiseTime;
    ST(z)=S.SettlingTime;
    OS(z)=S.Overshoot;
    
    %axis([0,5,0,0.4])
    %figure
end
    z=1:5
    k=-z
    figure()
    subplot(311)
    plot(k,TR(z))
    xlabel('-z')
    ylabel('RT')
    subplot(312)
    plot(k,ST(z))
    subplot(313)
    plot(k,OS(z))
    

