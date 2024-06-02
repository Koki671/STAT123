realEstate = read.csv("RealEstate.csv")

names(realEstate)
head(realEstate)

y = realEstate$Y.house.price.of.unit.area
x1 = realEstate$X1.transaction.date
x2 = realEstate$X2.house.age
x3 = realEstate$X3.distance.to.the.nearest.MRT.station
x4 = realEstate$X4.number.of.convenience.stores
x5 = realEstate$X5.latitude
x6 = realEstate$X6.longitude


# Plot y and x3 and try to observe the form of the relationship 

plot(x3,y)

# Plot log(y) and x3 to see if the relationship becomes more linear:

plot(x3,log(y))

# To see that the form between x3 and y is less linear than the form
# between x3 and log(y), use the correlation r:

cor(x3,y)

cor(x3,log(y))

# Find the linear regression line for log(y) and x3:
x3model = lm(log(y) ~ x3)

x3model

# Assess the validaty of the model, use the summary function:

options(scipen=999)

summary(x3model)


# Plot y and x5
plot(x5,y)

# Plot log(y) and x5
plot(x5,log(y))

# Compare the linear correlation between x5 and y and log(y)
cor(x5,y)

cor(x5,log(y))

# Create a regression model for log(y) and x5

x5model = lm(log(y)~x5)

# Check to see if the model is adequate. 

summary(x5model)

#change in log(y)

4-3.55

0.45*.3819

summary(x5)


ages = c(2, 2.5, 4, 5, 9, 11, 13, 15, 16, 18)
heights = c(2.3, 3, 3.5, 3.5, 4, 4.6, 5.1, 5.2, 5.6, 5.5)

plot(ages, heights)

lm(heights~ages)

plot(ages, heights, xlim = c(0, 20))
abline(lm(heights~ages))


# create a  model relating y with x3 and x5
model_x3_x5 = lm(y ~ x3 + x5)

model_x3_x5

summary(model_x3_x5)

# If we perform a log transform on y, we see that this model explains
# more of the variance in log(y) with a higher r^2 value. 

log_model = lm(log(y) ~ x3 + x5)

summary(log_model)

model_all = lm(y~x1+x2+x3+x4+x5+x6)

summary(model_all)

summary(lm(y~x1+x2+x3+x4+x5))

xvals = c(2,4,6,8,10,12,14)
yvals = c(5,10,15,22,17,12,3)

plot(xvals, yvals)

xsq = xvals*xvals
quad_model = lm(yvals~xvals+xsq)
summary(quad_model)












