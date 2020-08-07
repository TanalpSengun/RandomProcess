
% Author: Tanalp Þengün
% Course: Random Process

%Homework4 
% Using the above method, generate two Gaussian random variables 
%Plot their histograms and check their mean and variances.

%THOSE ARE FOR CLEARING THE WORKSPACE, COMMAND WÝNDOW AND FIGURES
clear all;
clc;
close all;

%CODE REPRESENTATION OF MATHEMATICAL ESTIMATION

%VECTOR CREATION
U1=rand(1e6,1); % Create a 1e6-element vector U1 (step 1)
U2=rand(1e6,1); % Create a 1e6-element vector U2 (step 1)

R2=-2*log(U1); % Find (step 2).
TH=2*pi*U2; % Find (step 2).

% SO NOW I HAVE TO CREATE X=N(0,2) AND Y=N(1,4)

X=sqrt(2)*sqrt(R2).*sin(TH); % Generate X (step 3)

Y=2*sqrt(R2).*cos(TH)+1; % Generate Y (step 3). 2 because sqrt(4)=2

K=-6:.2:6;
h = histogram(Y,'Normalization','pdf', 'EdgeAlpha',0.1);
hold on;
plot(K,normpdf(K,1,2));
corr(X,Y)

mean_1= mean(X);
mean_2= mean(Y);

var_1= var(X);
var_2= var(Y);




