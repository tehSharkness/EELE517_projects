close all
clear all

f0 = 1;
w0 = 2*pi*f0;
tt = [0:.01:2];

u0 = 0; %initial speed
x0 = [-1 0 1]; %normalized amplitude

x = x0.' * cos(w0*tt);

figure(1)
plot(tt*f0,x)

u0 = [-1 0 1].*w0;
x0 = 1;

x = ones(3,1)*(x0 * cos(w0*tt)) + (u0.' ./ w0)*sin(w0*tt);

figure(2)
plot(tt*f0,x)