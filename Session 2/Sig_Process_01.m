% Providor: Prof. Amindavar at https://aut.ac.ir/cv/2200/%D8%AD%D9%85%DB%8C%D8%AF%D8%B1%D8%B6%D8%A7%20%D8%A7%D9%85%DB%8C%D9%86%20%D8%AF%D8%A7%D9%88%D8%B1
clc;clear;
% Sampling
f=10; %frequency of the impulse in Hz
fs=f*10; % sample frequency is 10 times higher
t=0:1/fs:1; % time vector
y=zeros(size(t));
y(1:fs/f:end)=1; %conditioning on y about becoming one at each fs/f step
plot(t,y);title('sampling function'); figure(gcf);pause;
x=ones(size(y));
plot(t,x);title('continuous function'); figure(gcf);pause;
plot(t,x.*y);title('sampled function'); figure(gcf);pause;
freq=linspace(-.5,.5,length(t))*length(t);
plot(freq,abs(fftshift(fft(x.*y))));title('Fourier Tranform of sampled function'); figure(gcf);pause;
