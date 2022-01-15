%%Question 1
%Use MATLAB to stem plot the following discrete time signals
%Our range is from -10 to 10

clc;
clear;
n = -10:10;

% 1a) x[n] = u[n] -2u[n-1] + u[n-4]
question1a = unitstep(n) - 2*unitstep(n-1) + unitstep(n-4)
question1a;

% 1b) x[n] = (n+2)u[n+2] -2u[n] -nu[n-4]
question1b = (n+2).*unitstep(n+2) - 2*unitstep(n) - n.*unitstep(n-4);
question1b;

% 1c) x[n] = ?[n+1] - ?[n] + u[n+1] -u[n-2]
question1c = unitimpulse(n+1) - unitimpulse(n) + unitstep(n+1) - unitstep(n-2);
question1c;

% 1d) x[n] = (e^(0.8n))u[n+1] + u[n]
question1d = (exp(0.8*n)).*unitstep(n+1) + unitstep(n);
question1d;

stem(n,question1a)
%%stem(n,question1b);
%%stem(n,question1c);
%%stem(n,question1d);
title('Yichen Lu 400247938 & Fei cheng 400228518')


                                                                                                                       