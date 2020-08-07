
% Author: Tanalp Þengün
% Lecture: Random Process

% Homework 5

%define the random variables with their mean and variance.

x1=1*randn(1,1e6)+2;
x2=sqrt(6)*randn(1,1e6)-3;
x3=sqrt(2)*randn(1,1e6)+4;

% get the mean vector
mx=[mean(x1);mean(x2);mean(x3)];

%create the covariance matrix
Kx=[mean(x1.*x1)-mean(x1)*mean(x1),mean(x1.*x2)-mean(x1)*mean(x2),mean(x1.*x3)-mean(x1)*mean(x3);
mean(x2.*x1)-mean(x2)*mean(x1),mean(x2.*x2)-mean(x2)*mean(x2),mean(x2.*x3)-mean(x2)*mean(x3);
mean(x3.*x1)-mean(x3)*mean(x1),mean(x3.*x2)-mean(x3)*mean(x2),mean(x3.*x3)-mean(x3)*mean(x3)];

%randomly creating 3x3 matrix
A=rand(3,3) ;

% Y=A*x
Y=A*[x1;x2;x3]; 
y1=Y(1,:);
y2=Y(2,:);y3=Y(3,:);

%each mean of Y is with the A and mx
my=[mean(y1);mean(y2);mean(y3)];

%creating the covariance matrix of Y
Ky=[mean(y1.*y1)-mean(y1)*mean(y1),mean(y1.*y2)-mean(y1)*mean(y2),mean(y1.*y3)-mean(y1)*mean(y3);
mean(y2.*y1)-mean(y2)*mean(y1),mean(y2.*y2)-mean(y2)*mean(y2),mean(y2.*y3)-mean(y2)*mean(y3); 
mean(y3.*y1)-mean(y3)*mean(y1),mean(y3.*y2)-mean(y3)*mean(y2),mean(y3.*y3)-mean(y3)*mean(y3)];

xi=-10:0.1:10;
subplot(2,3,1);
histogram(x1,'Normalization','pdf');
hold on;
pd=makedist('Normal','mu',mx(1),'sigma',sqrt(Kx(1,1)));
plot(xi,pdf(pd,xi),'r') 
subplot(2,3,2);
histogram(x2,'Normalization','pdf');
hold on;
pd=makedist('Normal','mu',mx(2),'sigma',sqrt(Kx(2,2)));
plot(xi,pdf(pd,xi),'r') 
subplot(2,3,3);
histogram(x3,'Normalization','pdf');
hold on;
pd=makedist('Normal','mu',mx(3),'sigma',sqrt(Kx(3,3)));
plot(xi,pdf(pd,xi),'r') 
subplot(2,3,4);
histogram(y1,'Normalization','pdf');
hold on;
pd=makedist('Normal','mu',my(1),'sigma',sqrt(Ky(1,1)));
plot(xi,pdf(pd,xi),'r') 
subplot(2,3,5);
histogram(y2,'Normalization','pdf');
hold on;
pd=makedist('Normal','mu',my(2),'sigma',sqrt(Ky(2,2)));
plot(xi,pdf(pd,xi),'r') 
subplot(2,3,6);
histogram(y3,'Normalization','pdf');
hold on;
pd=makedist('Normal','mu',my(3),'sigma',sqrt(Ky(3,3)));
plot(xi,pdf(pd,xi),'r')