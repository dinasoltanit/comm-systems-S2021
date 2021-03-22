clc;
clear;
fs=10;
Ts=1/fs;
t1=0:Ts:50; % observation period
s=0.5*cos(0.5*pi*t1)+sin(2*pi*t1);
Q=8;
%% part 1
s_n= s/max(abs(s)+eps);
% Quantization
s_q=floor(2^(Q-1)*s_n);
% z spectrum
f_s_q=freqz(s_q,1,t1);
%% Part 2
% compression
mu=127;
s_n_mu= s/max(abs(s)+eps);
s_mu=log(1+mu*abs(s_n_mu))/log(1+mu).*sign(s_n_mu);
% Quantization
s_mu_q=floor(2^(Q-1)*s_mu);
% Expansion
s_mu_r=(exp(log(1+mu)*abs(s_mu_q)/2^(Q-1))-1)/mu.*sign(s_mu_q);
% z spectrum
f_s_mu_r=freqz(s_mu_r,1,t1);
% compare
subplot(2,1,1)
plot(t1, f_s_q)
subplot(2,1,2)
plot(t1, f_s_mu_r)