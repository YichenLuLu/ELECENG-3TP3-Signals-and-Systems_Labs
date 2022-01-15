%Yichen Lu (400247938) Cheng Fei (400228518)
clc;clear
% Read in the signal from the audio file
[signal, Fs] = audioread("tones2021.wav");
L = length(signal);
T = 1/Fs;
t = [0:L-1]*T;

y = fft(signal);
z = fftshift(y);

ly = length(y);
f = (-ly/2:ly/2-1)/ly*Fs;

stem(f,abs(z))
xlabel 'Frequency (Hz)'
ylabel '|y|'
grid