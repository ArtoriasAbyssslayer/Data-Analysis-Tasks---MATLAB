clear all;
clc;
flip = zeros(1,10000);
avg = zeros(1,10000);
for i = 1 : 10000
    flip(i) = randi([0,1]);
    avg(i) = mean(flip);
end
plot(avg); %plots with 'o' all the elements


