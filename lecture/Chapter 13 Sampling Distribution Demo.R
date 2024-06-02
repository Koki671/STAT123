
#Demo: Looking at Sampling Distributions for different statistics

#1) Consider a variable Y that is not normally distributed and consider
#the statistics: sample mean and sample standard deviation

# Y is a variable which does not have a normal distribution. To see this, 
# consider a random sample of size 100 of the variable Y. We can plot a 
# histogram of this sample in order to try and visualize the distribution of Y.

# Take a sample of 100 observations from a non-normal distribution
samp.100.Y = rexp(100,0.2)
hist(samp.100.Y,main="Distribution of Y",xlab="Values of Y")

# we are going to take 300 small samples of Y, that is, we are going to take
# 300 samples of size n = 10 of the variable Y. 

small.samp.Y = matrix(nrow=10,ncol=300)
for(i in 1:300){
  small.samp.Y[,i] = rexp(10,0.2)
}

# Now we compute the observed values of the statistics on each sample and 
# store these values. 

# Compute the sample mean for each of the 300 samples: 
small.sample.means = colMeans(small.samp.Y)

# Compute the sample standard deviations for each of the 300 samples:
small.sample.std.dev = apply(small.samp.Y,2,sd)


# To see the Sampling Distributions of each of these statistics, we simply
# plot histograms of each vector of observed values of the statistic:

hist(small.sample.means,main="Sampling Dist. for Sample Mean",xlab="Values of xBar")

# We see that this distribution appears skewed (not symmetric). In order for the
# sampling distribution for the sample mean of a non-normal variable to be normal,
# the sample size needs to be large (usually at least 40).

# To see the Sampling Distribution for the sample standard deviation:
hist(small.sample.std.dev,main="Sampling Dist. for Sample Std. Dev.",
     xlab="Values of s")

# We see that this distribution is right skewed and not normal. In fact, the
# sampling distribution for the sample standard deviation will never be normal.
# It will actually have the appearance of another distribution called the 
# chi-square distribution (which we won't cover in this course)


# Now take a large sample of Y (each sample is size 80):
large.samp.Y = matrix(nrow=80,ncol=300)

for(i in 1:300){
  large.samp.Y[,i] = rexp(80,0.2)
}

# Compute the sample means for the large samples of Y:
large.samp.means = colMeans(large.samp.Y)

# Compute the sample standard deviations for each of the 300 samples:
large.sample.std.dev = apply(large.samp.Y,2,sd)


# Look at the sampling distribution for the sample mean when the sample
# of Y is large:

hist(large.samp.means,main="Sampling Dist. for Sample Mean",
     xlab="Values of xBar")

# This appears to be approximately normally distributed. 


# To see the Sampling Distribution for the sample standard deviation:
hist(large.sample.std.dev,main="Sampling Dist. for Sample Std. Dev.",
     xlab="Values of s")

# This doesn't appears to be normally distributed. 



#2) Consider a variable Z which is normally distributed and again consider the
#statistic sample mean:
#  {r normal population variable}


samp.100.Z = rnorm(100,50,4)
hist(samp.100.Z,main="Distribution of Z",xlab="Values of Z")

# we are going to take 300 small samples of Z, that is, we are going to take
# 300 samples of size 10 of the variable Z. 
small.samp.Z = matrix(nrow=10,ncol=300)

for(i in 1:300){
  small.samp.Z[,i] = rnorm(10,50,4)
}


# Now we compute the observed values of the statistics on each sample and 
# store these values. 

# Compute the sample mean for each of the 300 samples: 
small.sample.means.Z = colMeans(small.samp.Z)


# To see the Sampling Distribution for the sample mean (with small samples)
# from a normal population we plot the histogram:

hist(small.sample.means.Z,main="Sampling Dist. for Sample Mean",xlab="Values of xBar")

# We see that the distribution appears normal even though the sample size is small. This
# is because the sample mean is normal (regardless of sample size) when the variable
# you are taking the mean of, is normally distributed. That is why, with the variable Z, 
# which is normally distributed, the sample mean (for small samples or large) will have 
# a normal dist. 


# Now take a large sample of Z (each sample is size 80):
large.samp.Z = matrix(nrow=80,ncol=300)

for(i in 1:300){
  large.samp.Z[,i] = rnorm(80,50,4)
}

# Compute the sample means for the large samples of Y:
large.samp.means.Z = colMeans(large.samp.Z)

# Look at the sampling distribution for the sample mean when the sample
# of Y is large:

hist(large.samp.means.Z,main="Sampling Dist. for Sample Mean",
     xlab="Values of xBar")

# This appears to be approximately normally distributed. 
