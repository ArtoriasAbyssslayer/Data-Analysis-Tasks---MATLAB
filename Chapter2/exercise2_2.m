%Initial parameters
uniform_random_nums = rand(1, 1000);
lambda = 2;

%Functions (CDF,PDF)

exponential_pdf = @(x)(lambda.*exp(-lambda.*x));
exponential_cdf = @(x)(-(1/lambda).*log(1.-x));

exponential_random_nums = exponential_cdf(uniform_random_nums);
clf;
hist(exponential_random_nums);
hold on;
plot([0.01:0.01:10], exponential_pdf[0.01:0.01:10]);