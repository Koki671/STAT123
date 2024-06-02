
sampleData = read.csv('/Users/itagakikouki/stat123/lecture/variable.X.Sample.csv',header = TRUE)
head(sampleData)
x=sampleData$X
par(mar=c(1,1,1,1))

#density plotにするためにprob = TRUEにしたらyが０〜１になる
hist(x, main = "yes",prob = TRUE)
#density curve
lines(density(x),col = "red")

#Find quantiles(10% and 90%)
quantile(x,0.10)
quantile(x,0.90)
#80% falls between these values
quantile(x,c(0.10,0.90))



#40% falls 
quantile(x,c(0.3,0.7))


#95% falls 
quantile(x,c(0.025,0.975))

#if x is normally distributed 

qnorm(c(0.1,0.9), mean = mean(x), sd = sd(x))
xbar = mean(x)
s = sd(x)
#41.49 quantileのpercentile
pnorm(41.49, mean(x), sd = sd(x))
pnorm(36.41, xbar, s)


# To see the Sampling Distributions of each of these statistics, we simply
# plot histograms of each vector of observed values of the statistic:

hist(small.sample.means,main="Sampling Dist. for Sample Mean",xlab="values of xBar")

# we see that this distribution appears skewed (not symmetric). In order for the
# sampling distribution for the sample mean of a non-normal variable to be normal,
# the sample size needs to be large (usually at least 40).

# To see the Sampling Distribution for the sample standard deviation:
hist(small.sample.std.dev,main="sampling Dist. for Sample Std. Dev.",
     x1ab="values of s")

# we see that this distribution is right skewed and not normal. In fact, the

# sampling distribution for the sample standard deviztis will never be normal.
# It will actually have the appearance of another distribution called the

# chi-square distribution (which we won't cover in this course)

# Now take a large sample of Y (each sample is size 80):

