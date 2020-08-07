%First question.
% as we look to the answers we should see a=0.5 and b=0.3
% in here there are 10^3 samples , in probability as the number of 
% samples / datapoints increase the probability becomes much more 
% closer to the teory.

rng('shuffle');
u=rand(1,1e3);
answer_a = length(find(u<0.5))/length(u);
answer_b = (length(find(u<0.7))-length(find(u<0.4)))/length(u);
answer_a
answer_b

% try with 10^4 sample now,

rng('shuffle');
u=rand(1,1e4);
answer_a_2 = length(find(u<0.5))/length(u);
answer_b_2 = (length(find(u<0.7))-length(find(u<0.4)))/length(u);
answer_a_2
answer_b_2

% try with 10^5 sample now,

rng('shuffle');
u=rand(1,1e5);
answer_a_3 = length(find(u<0.5))/length(u);
answer_b_3 = (length(find(u<0.7))-length(find(u<0.4)))/length(u);
answer_a_3
answer_b_3

%Second question

rng('shuffle');
x=rand(1,1e5)*2;
y=rand(1,1e5)*2;
q2_a = length(find(x>y))/1e5;
q2_b = length(find(x>1.2))/1e5;
q2_c = length(find(y<1.5))/1e5;
q2_a
q2_b
q2_c













