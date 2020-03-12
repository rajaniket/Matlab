clc;
clear;
close all;
z1=[];p1=[0;-2];k1=[4];
Gs=zpk(z1,p1,k1);
Gs_cltf=feedback(Gs,1);
subplot(121)
bode(Gs);
z2=[-4.4];p2=[-18.3];k2=[41.7];
Gcs=zpk(z2,p2,k2);
Gs_c=Gcs*Gs;
subplot(122)
bode(Gs_c);
Gs_c_cltf=feedback(Gs_c,1);
figure;
t=0:0.1:10;
lsim(Gs_cltf,t,t)
hold on;
lsim(Gs_c_cltf,t,t);
