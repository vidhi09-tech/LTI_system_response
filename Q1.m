clc;
clear all;
close all;
t = [-5:0.01:5];
t1 = [-10:0.01:10];
x = heaviside(t)-heaviside(t-1);
h = x;
y = conv(x,h);
subplot(311)
plot(t,x)
axis([-2 8 0 2])
title('x(t)');
subplot(312)
plot(t,h)
axis([-2 8 0 2])
title('h(t)');
subplot(313)
plot(t1,y)
title('y(t)');
