#Ch 14

install.packages('gapminder')
library(gapminder)

plot(x=gapminder$gdpPercap, y=gapminder$lifeExp, main="GDP vs Life Exp", xlab="GDP", ylab="Life Exp")
#plot for all available years

options(scipen=999)

plot(x=gapminder$gdpPercap, y=gapminder$lifeExp, main="GDP vs Life Exp", xlab="GDP", ylab="Life Exp")

rows_1977 = which(gapminder$year==1977)

gdp_1977 = gapminder$gdpPercap[rows_1977]

life_exp_1977= gapminder$lifeExp[rows_1977]

plot(x=gdp_1977, y=life_exp_1977, main="GDP vs Life Exp. in 1977", xlab="GDP", ylab="Life Exp. (in yrs)")

A = c(100,90,95,92,88)
B = c(140,90,100,135,80)

cor(A,B)
cor(B,A)

rows_Canada = which(gapminder$country=="Canada")

years_Canada = gapminder$year[rows_Canada]

population_Canada = gapminder$pop[rows_Canada]

plot(years_Canada, population_Canada)

cor(years_Canada, population_Canada)
