clc;
clear all;
close all;
syms vs(t)
dvs=diff(vs);

vs1=dsolve(diff(vs,2)+40*diff(vs)+1000*vs==0.1*diff(heaviside(t)),vs(0)==4,dvs(0)==15)
vs2=diff(vs1)
figure(1)
ezplot(vs1,[0 5]);
figure(2)
ezplot(vs2,[0,5])