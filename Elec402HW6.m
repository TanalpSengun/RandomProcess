% Author: Tanalp Þengün
% Course: Random Processes

% This is the 6th homework , and it is from the lecture 9.

rng('shuffle');
clear all;
clc;

n=1000;
m=4;

D=randsrc(n, m, [ -1 1 ; 0.5 0.5 ] );
X= cumsum(D);
plot(X);




% I will add the subplot function to see all of them together

figure('Name','Different Probabilities - HW6');

D1=randsrc(n, m, [ -1 1 ; 0.5 0.5 ] );
X1= cumsum(D1);
subplot(1,3,1);
plot(X1);
title('Probabilities 0.5 and 0.5');


D2=randsrc(n, m, [ -1 1 ; 0.75 0.25 ] );
X2= cumsum(D2);
subplot(1,3,2);
plot(X2);
title('Probabilities 0.75 and 0.25');

D3=randsrc(n, m, [ -1 1 ; 0.25 0.75 ] );
X3= cumsum(D3);
subplot(1,3,3);
plot(X3);
title('Probabilities 0.25 and 0.75');


% 
% % Probabilities wanted:
% % P1 = [ 0.5 0.5 ]
% % P2 = [ 0.75 0.25 ]
% % P3 = [ 0.25 0.75 ]q