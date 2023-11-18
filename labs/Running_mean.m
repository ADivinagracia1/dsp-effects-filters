clear all
close all
clc

Q = 250; 
n = 0.01;

figure
for N = 1:1:Q
    
    mean_sum = 0;
    sdev_sum = 0; 
    
    % t = 0:n:n*N; % Comment this, this doesnt work

    if N == 1
        t(N) = 0; 
    else
        t(N) = t(N-1) +n;
    end
    x(N) = sig(t(N)); % Generate input signal
    
    % Calculate Mean
    for i = 0:n:N*n
        mean_sum = sig(i) + mean_sum;
    end
    mean = (1/N)*mean_sum;  
    
    % Calculating Standard Deviation
    for j = 0:n:N*n
        sdev_sum = (sig(j) - mean)^2 + sdev_sum;
    end
    sdev = ((1/(N-1))*sdev_sum)^(1/2);
    
    % clear figure to show next animation
    clf
    hold on
    
    % Make mean and sdev horizontal lines for plot
    sg = sdev*ones(1, length(t));
    mu = mean*ones(1, length(t));
    
    % Plot Input Stigal
    plot(t, x)
    % Plotting the mean and sdev
    plot(t, mu, 'r')
    plot(t, mu+sg, 'g')
    plot(t, mu-sg, 'g')
    legend('signal','mean','+SD','-SD')
    
    hold off
    
    % Pause animation per step 
    % (computer does this too fast without it)
    pause(0.0001)
    
end

function x = sig(n)
    x = cos(n)*randn() + 3;
end