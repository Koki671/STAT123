#Chapter 12

?airquality

#find median by hand

head(airquality)

sort(airquality$Temp)

length(airquality) # of columns in data frame

length(airquality$Temp)

middle = (length(airquality$Temp)+1)/2

median = sort(airquality$Temp)[middle]
median

median(airquality$Temp)

#25% quantile

quantile(airquality$Temp, 0.25)

#75 quantile
quantile(airquality$Temp, 0.75)

#What is the output
quantile(airquality$Temp)

#What is the output

summary(airquality$Temp)

#show the plot of summary
boxplot(airquality$Temp)

#sample variance
sample=airquality$Temp[1:100]
var(sample)

#sample standard deviation
sd(sample)
#or
sqrt(var(sample))

#For population variance when your data set is for the population:
#population size n

n=length(airquality$Temp)

variance<- var(airquality$Temp)*(n-1)/n
sqrt(variance)

#outlier

#20 is an outlier

samp = c(100, 107, 98, 20, 105)

mean(samp)
median(samp)

#If you have an outlier that is small, then the mean will be smaller than
#the median.

wind<-airquality$Wind
median(wind)
med<- (length(wind) +1 )/2
sort(wind)[med]
quantile(wind)
quantile(wind,0.25)
quantile(wind,0.75)

