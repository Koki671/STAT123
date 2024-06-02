# Load required packages
library(lubridate)
library(tidyverse)

sp<-read.csv(file = "/Users/itagakikouki/stat123/project/^GSPC.csv", header = T)
sp
head(sp)
names(sp)
sp<-na.omit(sp)
sp$Date<-ymd(sp$Date)
#Normalize the data
sp_norm <- as.data.frame(lapply(sp[, -1], function(x) (x - min(x)) / (max(x) - min(x))))
sp_norm$Date <- sp$Date


# Calculate summary statistics
summary(sp_norm)

# Generate visualizations
library(ggplot2)

# Line plot of S&P 500 closing prices over time
ggplot(sp_norm, aes(x = Date, y = `Close`, group = 1)) +
  geom_line(color = "blue") +
  labs(title = "S&P 500 Closing Prices over Time", x = "Date", y = "Normalized Closing Price") +
  theme_minimal()

# Histogram of daily changes in S&P 500 closing prices
ggplot(sp_norm, aes(x = `Daily Change`)) +
  geom_histogram(color = "black", fill = "blue") +
  labs(title = "Histogram of Daily Changes in S&P 500 Closing Prices", x = "Daily Change", y = "Count") +
  theme_minimal()

# Correlation analysis
cor(sp_norm[, -1])


set.seed(123)
train_indices<-sample(1:nrow(sp_norm),0.8* nrow(sp_norm))
train_data<-sp_norm[train_indices,]
test_data<-sp_norm[-train_indices,]
test_data
lm_model <- lm(`Close` ~ ., data = train_data)
summary(lm_model)
model_predict<-predict(lm_model, newdata = test_data)
model_predict
mse <- mean((test_data$`Close` - model_predict)^2)
rmse <- sqrt(mse)
print(paste("Root Mean Squared Error (RMSE):", round(rmse, 3)))
test_data$predicted_close<- test_data$`Adj.Close` + model_predict
test_data$predicted_close

mae <- mean(abs(test_data$`Close` - test_data$predicted_close))
print(paste("Mean Absolute Error (MAE):", round(mae, 3)))

mpe<- abs(mae/test_data$Close)
print(paste("Mean Percentage Error (MPE):", round(mpe*100, 3), "%"))

  

# Set threshold price difference at 0
threshold <- 0

# Calculate predicted price difference
predicted_diff <- test_data$predicted_close - test_data$`Adj Close`

# Create binary classification of price increase/decrease
predicted_dir <- ifelse(predicted_diff > threshold, "increase", "decrease")
actual_dir <- ifelse(test_data$`Close` > test_data$`Adj Close`, "increase", "decrease")

# Create confusion matrix
confusion_matrix <- table(predicted_dir, actual_dir)
confusion_matrix




conf_matrix <- table(test_data$direction, test_data$predicted_direction)

TP <- conf_matrix[2,2]
FP <- conf_matrix[1,2]
FN <- conf_matrix[2,1]
TN <- conf_matrix[1,1]

accuracy <- (TP + TN) / (TP + TN + FP + FN)
precision <- TP / (TP + FP)
recall <- TP / (TP + FN)
f1_score <- 2 * (precision * recall) / (precision + recall)

print(paste("Accuracy:", round(accuracy, 3)))
print(paste("Precision:", round(precision, 3)))
print(paste("Recall:", round(recall, 3)))
print(paste("F1-score:", round(f1_score, 3)))










mean(abs())
data<-
  open<-
  high<-
  low<-
  close<-
  adj_close<-
  volume<-