clc
clear all
close all

% In MATLAB, write a function (from scratch) to calculate 
% the Inverse Discrete Fourier Transform of a signal
% Note: Given is the Fourier Series

% if FT coefficients are given
% --> create time domain signal from that
% EX - If we have just two peaks in the frequency response
% I want to see what the original signal in TIME DOMAIN is

n = 0:1:10e3;
f = 3; % Hz (message freq)
k = 3;
N = 1/k;



% % Time Domain N
% subplot(2,1,1)
% plot(_____, ____, 'o-') 
% xlim([0 1])
% xlabel('Time (s)')
% ylabel('x[n]')
% 
% % Frequency Domain Response
% subplot(2,1,2)
% plot(_____, _____, 'o-') 
% xlim([0 1])
% xlabel('Frequency (Hz)')
% ylabel('x[n]')


