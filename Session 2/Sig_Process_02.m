% Providor and Course Instructor: Prof. Amindavar at https://aut.ac.ir/cv/2200/%D8%AD%D9%85%DB%8C%D8%AF%D8%B1%D8%B6%D8%A7%20%D8%A7%D9%85%DB%8C%D9%86%20%D8%AF%D8%A7%D9%88%D8%B1
clc; clear;
t=linspace(-10,10,101);
x=exp(-t.^2/100);
y=zeros(size(t));
y(1:fs/f:end)=1; % Sampling Function
plot(t,x);title('continuous function'); figure(gcf);pause; 
plot(t,x.*y);title('sampled function'); figure(gcf);pause; % Sampled Function
freq=linspace(-.5,.5,length(t))*length(t);
plot(freq,abs(fftshift(fft(x.*y))));title('Fourier Tranform of sampled function'); figure(gcf);pause; % Transformed Function