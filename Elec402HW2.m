

% Homework 2 of the Random Process
% Author : Tanalp Þengün
% Relative Frequencies and pmf

number_of_tries= 1e3;
last_number=7;
x= randi(7,1,number_of_tries);
 
 
for count=1:last_number
    rel_freq(count)=length(find(x==count))/number_of_tries;
end
 
stem(1:7,rel_freq); 
title('1e3 tries and up to 7');
xlabel('x');
ylabel('p_X(x)');

%The first question's first part can be achieved by just changing the 
%number of tries by 1e5. So I changed it.
 
 
number_of_tries= 1e5;
last_number=7;
x= randi(last_number,1,number_of_tries);
 
 
for count=1:last_number
    rel_freq(count)=length(find(x==count))/number_of_tries;
end
figure();
stem(1:last_number,rel_freq); 
title('1e5 tries and up to 7');
xlabel('x');
ylabel('p_X(x)');

%The first question's second part can be achieved by just changing the 
%last_number by 10.
 
 
number_of_tries= 1e5;
last_number=10;
x= randi(last_number,1,number_of_tries);
 
 
for count=1:last_number
    rel_freq(count)=length(find(x==count))/number_of_tries;
end
figure();
stem(1:last_number,rel_freq); 
title('1e5 tries and up to 10');
xlabel('x');
ylabel('p_X(x)');

%%% The second question is to repeat the code with the
% different parameters and look to the result
 
rng('shuffle'); 
u=randi(10,1,1e7); 
% I changed the two parameters and this is the result
figure();
title('1e7 tries and up to 20');
hist(u,50);
mean1= mean(u);
var1 = var(u);
mean1
var1

figure();
title('1e5 tries and up to 10');
r = poissrnd(10,1,10^7); 
hist(r,50);
mean2= mean(r);
var2= var(r);
mean2
var2

