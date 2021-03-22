clc;
clear;
fs=20;
Ts=1/fs;
t1=0:Ts:50; % observation period
s=10*exp(-t1)+sin(2*pi*t1);
%% part 1
s_n= s/max(abs(s)+eps);
% Quantization
Q=8;
s_q=floor(2^(Q-1)*s_n);
% compare
subplot(1,2,1)
plot(t1, s_n-s_q)
rms_zero_mu=sqrt(mean((s_n-s_q).^2));
%% Part 2
% compression
mu=255;
s_n_mu= s/max(abs(s)+eps);
s_mu=log(1+mu*abs(s_n_mu))/log(1+mu).*sign(s_n_mu);
% Quantization
Q=8;
s_mu_q=floor(2^(Q-1)*s_mu);
% Expansion
s_mu_r=(exp(log(1+mu)*abs(s_mu_q)/2^(Q-1))-1)/mu.*sign(s_mu_q);
% compare
subplot(1,2,2)
plot(t1, s_n_mu-s_mu_r)
rms_mu=sqrt(mean((s_n_mu-s_mu_r).^2));

fprintf('rms1= %d , rms2= %d \n',rms_zero_mu,rms_mu)