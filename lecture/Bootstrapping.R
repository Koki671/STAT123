#Bootstrapping

data_to_bootstrap <- read.csv("/Users/itagakikouki/stat123/bootstrap_sample.csv")
head(data_to_bootstrap)

# Save the variable column in the data set to a vector named original_sample
original_sample = data_to_bootstrap$Variable

# Determine the length of the sample and call this value n
n = length(original_sample)
n
# Write a for-loop which computes the standard deviation on 10000 samples 
# of size n taken/bootstrapped from the original sample.

# Create an empty vector to store all of the sample standard deviations:
boot_sample = numeric()

for(i in 1:10000){
  boot_sample[i]= sd(sample(original_sample,n,replace=TRUE))
}

# To estimate the sample standard deviation, you take an average of all of 
# the sample standard deviations

mean(boot_sample)


# Find a 90% confidence interval for the standard deviation
quantile(boot_sample,c(0.05,0.95))

# Define the lower bound of the confidence interval 
lower = quantile(boot_sample,0.05)
upper = quantile(boot_sample,0.95)

# Plot a histogram of the sampling distribution and insert vertical lines
# at the confidence interval bounds. 
hist(boot_sample,main="Bootstrapped Sample Dist. for Std. Dev",
     probability = TRUE)
abline(v=lower,col="red")
abline(v=upper,col="red")




# Recall, a confidence interval (when we know the sampling distribution) is formed
# by taking an estimate for the parameter plus or minus the critical value 
# multiplied with the standard error for the statistic. 

# Recall, standard error of the statistic is another term for the standard
# deviation of the statistic. 

# Estimate for the population mean is the sample mean
xbar = mean(original_sample)
xbar

# The standard error for xbar is sigma/sqrt(n) but we almost never know the 
# value of sigma (population standard deviation) so instead we can find the
# estimated standard error by using s (sample standard deviation)
est_std_err = sd(original_sample)/sqrt(n)
est_std_err

# To compute the critical value for a 95% confidence interval, we need to know
# from which distribution the critical value comes from. Since xbar is approx
# normally distributed, the critical value will come from the normal dist. 
# Specifically, we can take either the lower percentile (2.5th) or the upper
# percentile (97.5th)
crit_value = qnorm(0.975)
crit_value

# Putting everything together, we can compute the confidence interval:

# margin of error

marg_of_err = est_std_err*crit_value

# Lower bound of the confidence interval 
lower_bound = xbar - marg_of_err
lower_bound

# Upper bound of the confidence interval
upper_bound = xbar + marg_of_err
upper_bound


#Now we find the confidence interval by bootstrapping the sampling distribution for xbar and computing the percentiles directly from the distribution. 


# Empty vector which will contain all of the bootstrapped sample means
boot_mean = numeric()

# For loop which boostraps 10000 samples from the original sample and then
# compute the sample mean on each sample. 
for(k in 1:10000){
  temp_samp = sample(original_sample,n,replace=TRUE)
  temp_mean = mean(temp_samp)
  boot_mean[k] = temp_mean
}

# If we want to find a 95% confidence interval for the mean, we can use
# the quantiles of the sampling distribution

quantile(boot_mean,c(0.025,0.975))


# The mean of the sampling distribution (which is supposed to be the population)
# mean
mean(boot_mean)

# The standard deviation of the bootstrapped means should be similar to the 
# standard error that we computed above. This is because the standard error 
# is the standard deviation of the statistic. 
sd(boot_mean)




