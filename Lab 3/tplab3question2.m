%Cheng Fei 400228518&Yichen Lu 400247938
clc;clear;
% Use sinusoid frequency f = 300 Hz
f1 = 100;
f2 = 200;
f3 = 400;
f4 = 800;
%
% Sampling frequency and interval
fs = 8000;
Ts = 1/fs;
%
% Set time duration of plot, i.e., 10 msec.
tfinalplot = 10e-3;
%
% Make the time vector for the plot
nplot=0:Ts:tfinalplot;
%
% Make the time vector for replayed sound spurt
% Play the spurt for 2 seconds
tfinal = 2;
nsound=0:Ts:tfinal;
%
% Sample the sinusoid.
xnT1 = sin(2*pi*f1*nsound);
xnT2 = sin(2*pi*f2*nsound);
xnT3 = sin(2*pi*f3*nsound);
xnT4 = sin(2*pi*f4*nsound);
%
% Make the plot
hold on
%suptitle('Lab 3 Question 2 Cheng Fei 400228518&Yichen Lu 400247938')
subplot(2,2,1)
plot(nplot, xnT1(1:length(nplot)));
subplot(2,2,2)
plot(nplot, xnT2(1:length(nplot)));
subplot(2,2,3)
plot(nplot, xnT3(1:length(nplot)));
subplot(2,2,4)
plot(nplot, xnT4(1:length(nplot)));
hold off
%
% Save xnT as a wav sound file, soundfile.wav.
audiowrite('Lab3_Q2_1.wav', xnT1, fs);
audiowrite('Lab3_Q2_2.wav', xnT2, fs);
audiowrite('Lab3_Q2_3.wav', xnT3, fs);
audiowrite('Lab3_Q2_4.wav', xnT4, fs);
%
% Uncomment/edit this next line to save the graph.
saveas(gcf, 'Lab3_Q2.jpg');
%