%Yichen Lu (400247938) Cheng Fei (400228518)
clc;clear;
% Take the DFT
[signal, Fs] = audioread("tones2021.wav");
L = length(signal);
y = fft(signal);
Y = fft(signal)/L; 
f = Fs/2*linspace(0,1,L/2+1);
% Plot the single-sided magnitude spectrum.
plot(f,2*abs(Y(1:L/2+1)));
title('Single-Sided Magnitude Spectrum')
xlabel('Frequency (Hz)')
ylabel('|Y(f)|')
axis([0 Fs/2 0 .5]);
grid('minor');