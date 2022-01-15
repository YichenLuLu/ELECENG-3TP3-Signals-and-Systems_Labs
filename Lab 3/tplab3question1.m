%Cheng Fei 400228518&Yichen Lu 400247938
% Q1
% Do a plot of a sampled sinusoid with frequency f = 100 Hz
clc;clear;
f = 100; 
% Sampling frequency and interval
fs = 8000;
Ts = 1/fs;
%
% Set time duration of the plot, i.e., 10ms.
tfinalplot = 10e-3;
%
% Make the time vector for the plot
nplot=0:Ts:tfinalplot;
%
% Sample the sinusoid.
xnT = sin(2*pi*f*nplot);
%
% Make the plot
stem(nplot, xnT);
title('Lab 3 Question 1 Cheng Fei 400228518&Yichen Lu 400247938');
%
% Uncomment/edit this next line to save the graph.
saveas(gcf, 'Q1_stem_plot.jpg'); %

% Answer to the question:
% We can see that the data is discrete in the graph, but it can be
% understood by human eyes as a sinosoidal wave because the sampling
% frequency is much higher than the wave frequency.