#Q1
setwd("C:\\Users\\IT24103907\\Desktop")
branch_data <- read.table("Exercise.txt", header = TRUE, sep = ",")

#Q2
str(branch_data)

#Q3
boxplot(branch_data$Sales_X1, main = "Boxplot for sales", ylab = "Sales")
summary(branch_data$Advertising_x2)

#Q4
IQR(branch_data$Advertising_X2)

#Q5
find_outliers <- function(x){
  Q1 <- quantile(x, 0.25)
  Q3 <- quantile(x, 0.75)
  IQR_value <- IQR(x)
  lower_bound <- Q1 - 1.5 * IQR_value
  upper_bound <- Q3 + 1.5 * IQR_value
  outliers <- x[x < lower_bound | x > upper_bound]
  return(outliers)
}

outliers_advertising <- find_outliers(branch_data$Advertising_X2)
outliers_advertising