%Cheng Fei 400228518&Yichen Lu 400247938
clc;clear;
miu = 2000;
f1 = 100;
fs = 16000;
Ts = 1/fs;
tfinalplot = 0.0625;
nplot=0:Ts:tfinalplot;
tfinal = 8;
total = tfinal*fs;
nsound=0:Ts:tfinal;
ft = ones(1,total);
for i = 1:total
    ft(1,i+1) = 2000*i + f1;
end
ft(1) = 0;
xnT = cos(pi*miu.*nsound.^2+2*pi.*ft.*nsound);
plot(nplot, xnT(1:length(nplot)));
title('Lab 3 Question 6 Cheng Fei 400228518&Yichen Lu 400247938')
audiowrite('Lab3_Q6.wav', xnT, fs);
saveas(gcf, 'Lab3_Q6.jpg');