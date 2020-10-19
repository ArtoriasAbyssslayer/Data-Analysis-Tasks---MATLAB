
clear all;
clc;
%Initial Parameters
b = 2;
a = 1;
%N random number-vector generator in the interval [a,b]:
%->UniformRandomVector =(b-a).*rand(N,1) + a;
sizeOfSamples = [10 100 1000 1e4 1e5 1e6];
numberOfSamples = length(sizeOfSamples);

%val_A the vector that stores the E[1/X] values
%val_B the vector that stores the 1/E[X] values 
val_A = zeros(numberOfSamples,1);
val_B = zeros(numberOfSamples,1);


for i=1 : numberOfSamples
    N = sizeOfSamples(i);
    URV_sample =(b-a).*rand(N,1) + a;
    val_A(i) = mean(URV_sample.^-1);
    val_B(i) = 1/mean(URV_sample);
end

figure();
set(gca,'yscale','linear')
set(gca,'xscale','log')
grid on;
hold on;
semilogx(sizeOfSamples,val_A,'--or');
hold on;
semilogx(sizeOfSamples,val_B,'--ob');
xlabel("n: sample size");
legend("E[1/X]", "1/E[X]");