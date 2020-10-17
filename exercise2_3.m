clc;
clear all;

muX=0;
muY=0;

sigma1 = 1;
sigma2 = 3;
corr12 = 1.5;

%number of random numbers

n = 10;

%mean of X and Y

mu = [muX muY];
Sigma = [sigma1 corr12; corr12 sigma2];
R = mvnrnd(mu, Sigma,n);

X = R(:,1);
Y = R(:,2);

varX = var(X);
varY = var(Y);
varXsumY = var(X+Y);

fprintf("From our calculations, we get that Var[X]+Var[Y]=%f .\n", varX+varY,varXsumY);