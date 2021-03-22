% Providor and Course Instructor: Prof. Amindavar at https://aut.ac.ir/cv/2200/%D8%AD%D9%85%DB%8C%D8%AF%D8%B1%D8%B6%D8%A7%20%D8%A7%D9%85%DB%8C%D9%86%20%D8%AF%D8%A7%D9%88%D8%B1
clc;clear;
%Sampling
% Sample the sinusoid x = sin(2 pi f t), where f = 2 kHz, and plot the sampled
% signals over the continuous-time signal.
f = 2000;
T = 1/f;
tmin = 0;
tmax = 5*T;
dt = T/100;
dt1 = 1/10000;
dt2 = 1/3000;
t = tmin:dt:tmax;
t1 = tmin:dt1:tmax;
t2 = tmin:dt2:tmax;
x = sin(2*pi*f*t);
x1 = sin(2*pi*f*t1); % Let x1 be the signal sampled at 10 kHz.
x2 = sin(2*pi*f*t2); % Let x2 be the signal sampled at 3 kHz.
subplot(211)
plot(t,x,'r');
hold on
stem(t1,x1);
subplot(212)
plot(t,x,'r');
hold on
stem(t2,x2);
figure(gcf)