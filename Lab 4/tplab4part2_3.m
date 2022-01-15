%Yichen Lu (400247938) Cheng Fei (400228518)
% Read in the signal from the audio file
[signal, Fs] = audioread('SecretMessage2021.wav');
L = length(signal);
T = 1/Fs;
t = [0:L-1]*T;
Y = fft(signal)/L;
f = Fs/2*linspace(0,1,L/2+1);
plot(f,2*abs(Y(1:L/2+1)));
title('Single-Sided Magnitude Spectrum');
xlabel('Frequency (Hz)');
ylabel('|Y(f)|');
axis([0 Fs/2 0 .05]);
grid('minor');
exportgraphics(gcf, 'part2q3.png');