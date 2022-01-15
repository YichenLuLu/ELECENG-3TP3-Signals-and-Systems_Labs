%Yichen Lu (400247938) Cheng Fei (400228518)
% Read in the signal from the audio file
[signal, Fs] = audioread('tones2021.wav');
L = length(signal);
T = 1/Fs;
t = [0:L-1]*T;
% Plot the signal for t_plot msec
t_plot = 5;
msec_per_sec = 1000;
numSamples = t_plot*Fs/msec_per_sec;
plot(msec_per_sec*t(1:numSamples), signal(1:numSamples));
s1 = 0.4*sin(2*pi*1000*t);
s2 = 0.2*sin(2*pi*4000*t);
s3 = 0.2*sin(2*pi*6000*t);
s123_signal = s1+s2+s3;
tiledlayout('flow');
nexttile;
plot(msec_per_sec*t(1:numSamples), signal(1: numSamples));
title('Plot of Input Signal');
xlabel('time (ms)');
grid('minor');
nexttile; plot(msec_per_sec*t(1:numSamples), s123_signal(1:numSamples));
title('S123 combined signal');
xlabel('time (ms)');
exportgraphics(gcf, 'part1q8.png');
