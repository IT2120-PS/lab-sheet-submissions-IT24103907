setwd("C:\\Users\\User\\Desktop\\IT24103907")
getwd()

#01
weights_data <- read.table("Exercise - LaptopsWeights.txt", header=TRUE)
fix(weights_data)
attach(weights_data)

#Calculate the Population Mean
pop_mean <- mean(Weight.kg.)

#Calculate the Population Standard Deviation
n_pop <- length(Weight.kg.)
pop_variance <- var(Weight.kg.) * (n_pop - 1) / n_pop
pop_sd <- sqrt(pop_variance)

print(paste("Population Mean:", pop_mean))
print(paste("Population Standard Deviation:", pop_sd))


#02
population <- Weight.kg.

k <- 25 # Number of samples
n <- 6 # Sample size

samples_matrix <- c()
sample_means <- c()
sample_sds <- c()

for (i in 1:k) {
  # Draw a sample of size n=6 with replacement
  s <- sample(population, n, replace = TRUE)
  
  # Calculate sample mean and sample standard deviation
  s_mean <- mean(s)
  s_sd <- sd(s) 
  
  # Store the mean and SD
  sample_means <- c(sample_means, s_mean)
  sample_sds <- c(sample_sds, s_sd)
}

# Combine results into a table for display
results_table <- data.frame(
  Sample = 1:k,
  Mean = sample_means,
  SD = sample_sds
)

print(results_table)

#03
#Calculate the Mean of the Sample Means 
mean_of_sample_means <- mean(sample_means)

#Calculate the Standard Deviation of the Sample Means
sd_of_sample_means <- sd(sample_means)

print(paste("Mean of the Sample Means:", mean_of_sample_means))
print(paste("Standard Deviation of the Sample Means (SE):", sd_of_sample_means))


