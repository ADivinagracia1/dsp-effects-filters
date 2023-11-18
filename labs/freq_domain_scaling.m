clc 
clear
close all

n = 0:1:10e3; % set of samples
f = 3; % Hz (message freq)
k = 3;
N = 1/k;
Fs = 30; % Hz (sampling freq) --> Change this to see a BETTER xn read signal
Ts = 1/Fs;
Fs1 = 6; % Minimum Sampling Freq
Fs2 = 300; % Clearer, better sampling frequency

% xn = cos(2*pi*k*n/N)
xn = cos (2*pi*f*n*Ts)  
xn_1 = cos (2*pi*f*n/Fs1)  
xn_2 = cos (2*pi*f*n/Fs2)  

subplot(4,1,1)
title('Different Sampling Frequencies Fs')
plot(n/Fs, xn, 'o-') % o- shows the sample points
hold on
stem(n/Fs, xn) 
xlim([0 1])
xlabel('Time (s)')
ylabel('x[n]')

subplot(4,1,2)
plot(n/Fs1, xn_1, 'o-') % o- shows the sample points
hold on
stem(n/Fs1, xn_1) 
xlim([0 1])
xlabel('Time (s)')
ylabel('x[n]')

subplot(4,1,3)
plot(n/Fs2, xn_2, 'o-') % o- shows the sample points
hold on
stem(n/Fs2, xn_2) 
xlim([0 1])
xlabel('Time (s)')
ylabel('x[n]')

% ---------------------------------------------
% Using the DFT Basis Function

i = 0:1:100; % Uses all the DISCRETE values of your sample
Nsz = length(i); 

xn_ans = cos (2*pi*k*i/Nsz)

subplot(4,1,4)
plot(i/Nsz, xn_ans, 'o-') % o- shows the sample points 
xlim([0 1])
xlabel('Time (s)')
ylabel('x[n]')


