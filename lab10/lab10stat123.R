
  install.packages("tidyverse")
library("dplyr")
library("ggplot2")
dairy_sttocks<-read.csv(file ="/Users/itagakikouki/stat123/lab10/stock-Canada.csv")
dim(dairy_sttocks)
head(dairy_sttocks)
dairy_sttocks<- dairy_sttocks%>%
  select(REF_DATE,GEO,Stocks,Commodity,VALUE)%>%
  mutate(REF_DATE = as.Date(paste0(REF_DATE,"-01"), format = "%Y-%m-%d"))
dim(dairy_sttocks)
head(dairy_sttocks)
#SO many NA's
summary(dairy_sttocks$VALUE)
#Since NA exists
sd(dairy_sttocks$VALUE)
#remove na
dairy_sttocks<-na.omit(dairy_sttocks)
summary(dairy_sttocks$VALUE)
sd(dairy_sttocks$VALUE)
ggplot(data = dairy_sttocks, aes(x = REF_DATE, y = VALUE)) + geom_line() + labs(x = "Date", y = "Stocks (Tonnes)", title = "Relationship between date and stock value")

ggplot(dairy_sttocks, mapping = aes(X = REF_DATE, Y = VALUE)) + 
  geom_line() +
  labs(x = "Date", y = "Stocks(Tonnes)",title = "Relationship between date
and stock value") + coord_flip()

set.seed(2023)
 train_index<- sample(1:nrow(dairy_sttocks),size = round(0.8*nrow(dairy_sttocks)))
 train_data<-dairy_sttocks[train_index, ]
 test_data<- dairy_sttocks[-train_index,]
 model1<-lm(VALUE~REF_DATE +GEO + Stocks + Commodity, data = train_data)
 model1
 summary(model1)