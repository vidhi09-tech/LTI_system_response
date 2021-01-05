clc;
clear all;
close all;

ts = 0.01;
t = 0:ts:10;
w = 2*pi;
m1 = cos(t);
m(m1>=0)=1;
m(m1<-0)=-1;
v1 = 10;
v2 = 1;
syms t1
s = int(m,t1,[0,10]);
y1 = cos((w*t)+2*pi*v1*s);
y2 = cos((w*t)+2*pi*v2*s);
subplot(311)
plot(t,m)
title('m(t)')
subplot(312)
plot(t,y1)
title('y1(t)')
subplot(313)
plot(t,y2)
title('y2(t)')
