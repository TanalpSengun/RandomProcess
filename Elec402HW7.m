

%Author: Tanalp Þengün
%Homework 7 - Random Processes

% approximating continous-time
T = 1;
N = 500; 
dt = T/N; 
% preallocate arrays ...
dW = zeros(1,N);
% for efficiency
W = zeros(1,N);

% first approximation outside the loop ...
dW(1) = sqrt(dt)*randn; 
% since W(0) = 0 is not allowed
W(1) = dW(1);


for j = 2:N
dW(j) = sqrt(dt)*randn; % general increment

W(j) = W(j-1) + dW(j);
end
subplot(3,1,1);
plot((0:dt:T),[0,W],'r-') % plot W against t
title('N=500');
xlabel('t') 
ylabel('W(t)')

%-------- Start with N=1000 ---------


% approximating continous-time
T = 1;
N = 1000; 
dt = T/N; 
% preallocate arrays ...
dW = zeros(1,N);
% for efficiency
W = zeros(1,N);

% first approximation outside the loop ...
dW(1) = sqrt(dt)*randn; 
% since W(0) = 0 is not allowed
W(1) = dW(1);


for j = 2:N
dW(j) = sqrt(dt)*randn; % general increment

W(j) = W(j-1) + dW(j);
end
subplot(3,1,2);
plot((0:dt:T),[0,W],'r-') % plot W against t
title('N=1000');
xlabel('t') 
ylabel('W(t)')


%-------- Continue with N=5000 ---------


% approximating continous-time
T = 1;
N = 5000; 
dt = T/N; 
% preallocate arrays ...
dW = zeros(1,N);
% for efficiency
W = zeros(1,N);

% first approximation outside the loop ...
dW(1) = sqrt(dt)*randn; 
% since W(0) = 0 is not allowed
W(1) = dW(1);


for j = 2:N
dW(j) = sqrt(dt)*randn; % general increment

W(j) = W(j-1) + dW(j);
end
subplot(3,1,3);
plot((0:dt:T),[0,W],'r-') % plot W against t
title('N=5000');
xlabel('t') 
ylabel('W(t)')











 
