setwd("C:\\Users\\acer\\Desktop\\IT24103907")
getwd
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)
Delivery_Times$`Delivery_Time_.minutes.` <- as.numeric(Delivery_Times$`Delivery_Time_.minutes.`)
hist(Delivery_Times$`Delivery_Time_.minutes.`, 
     breaks = seq(20, 70, by = 5), 
     right = TRUE, 
     col = "lightpink", 
     main = "Histogram of Delivery Times", 
     xlab = "Delivery Time", 
     ylab = "Frequency")
cf <- cumsum(table(cut(Delivery_Times$`Delivery_Time_.minutes.`, breaks = seq(20, 70, by = 5), right = TRUE)))
plot(seq(22.5, 67.5, by = 5), cf, type = "o", col = "green", 
     xlab = "Delivery Time", ylab = "Cumulative Frequency", 
     main = "Cumulative Frequency Polygon (Ogive)")