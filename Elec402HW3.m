
%Author: Tanalp Þengün
% HW3 Elec402 

clc 
clearvars

%example 1
U=rand (1, 1e5); % Generate 1e5 uniform random variables.
X=-log(1-U); % Compute 1e5 exponential RVs.
h = histogram(X,'Normalization','pdf'); 
ex_1_mean = mean(X);
ex_1_var =var(X);

figure();
%example2
X=randn(1,1e6);
h2 = histogram(X,'Normalization','pdf'); 
ex_2_mean = mean(X);
ex_2_var =var(X);
figure();


Y=2*X+3;
h3 = histogram(Y,'Normalization','pdf'); 
ex_3_mean = mean(Y);
ex_3_var =var(Y);





%%%% THESE ARE FROM THE SLIDES; FROM NOW ON MY HW STARTS

%the question ask us to change the lambda into 2 and 3 

%case lambda=2
U=rand (1, 1e5); % Generate 1e5 uniform random variables.
X=-(0.5).*log(1-U); % Compute 1e5 exponential RVs.
h = histogram(X,'Normalization','pdf'); 
mean_lamda2=mean(X);
var_lamda2= var(X);
mean_lamda2
var_lamda2

figure();
%case lambda=3
U=rand (1, 1e5); % Generate 1e5 uniform random variables.
X=-(1/3).*log(1-U); % Compute 1e5 exponential RVs.
h = histogram(X,'Normalization','pdf'); 
mean_lamda3=mean(X);
var_lamda3= var(X);
mean_lamda3
var_lamda3

figure();
%case for gaussian random variable
X=randn(1,1e6);
r= 3+5^(1/2)*X;
h4 = histogram(r,'Normalization','pdf'); 
histogram(r);
mean_4=mean(r);
 var_4= var(r);









