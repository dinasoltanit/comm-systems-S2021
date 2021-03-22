% Providor and Course Instructor: Prof. Amindavar at https://aut.ac.ir/cv/2200/%D8%AD%D9%85%DB%8C%D8%AF%D8%B1%D8%B6%D8%A7%20%D8%A7%D9%85%DB%8C%D9%86%20%D8%AF%D8%A7%D9%88%D8%B1
clc;clear;
%Quantization
t = [0:.05:2*pi]; % Times at which to sample the sine function
sig1=sin(t);
sig2=sin(t).*exp(-t);
sig3 = sin(2*pi*10*sin(t)); % Original signal, a sine wave
partition = [-1:.2:1]; % Length 11, to represent 12 intervals
codebook = [-1.2:.2:1]; % Length 12, one entry for each interval
[index,quants] = quantiz(sig2,partition,codebook); % Quantize.
figure(1);plot(t,sig2,t,sig2,'x',t,quants,'.')
axis([-.2 7 -1.2 1.2])
figure(gcf)
legend('Original signal','Quantized signal');
figure(2);plot(t,sig2-quants,':')
axis([-.2 7 -1.2 1.2])
figure(gcf)
figure(3);
hist(sig2-quants); % N = hist(Y) bins the elements of Y into 10 equally spaced containers and returns the number of elements in each container.  If Y is a matrix, hist works down the columns.
figure(gcf)