%Cheng Fei 400228518&Yichen Lu 400247938
f=100;
u=2000;
fs=32000;
Ts=1/fs;
nplot=0:Ts:Ts*(u-1);
tfinal=8;
nsound=0:Ts:tfinal;

signal=cos(pi*u*nsound.^2+2*pi*f*nsound);
fig=figure('Name', 'Yichen Lu (400247938) Cheng Fei (400228518)');
plot(nplot,signal(1:length(nplot)));
title('Aliasing of a Frequency Chirp Signal');
% Save xnT as a wav sound file, soundfile.wav.
audiowrite('soundfileq5.wav', signal, fs);
%
% Uncomment/edit this next line to save the graph.
exportgraphics(gcf, 'Q5.jpg');