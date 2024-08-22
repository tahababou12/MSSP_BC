# 1. Create a function to calculate the area of a circle.
# The function takes the diameter of a circle as input and returns the area.
calculate_circle_area <- function(diameter) {
  radius <- diameter / 2
  area <- pi * (radius^2)
  return(area)
}

# Test the function with a diameter of 3.4 cm
area <- calculate_circle_area(3.4)
print(paste("Area of the circle:", area))

# The function can also be applied to a vector of diameters
diameters <- c(3.4, 5.2, 7.8)
areas <- calculate_circle_area(diameters)
print(paste("Areas of circles with diameters", diameters, ":", areas))


# 2. Write a function to convert Fahrenheit to Centigrade.
# The function converts a given temperature in Fahrenheit to Celsius and prints the result.
fahrenheit_to_celsius <- function(fahrenheit) {
  celsius <- (fahrenheit - 32) * 5/9
  print(paste("Fahrenheit:", fahrenheit, "is equivalent to", round(celsius, 2), "Celsius."))
  return(celsius)
}

# Test the function with a sample Fahrenheit value
celsius_temp <- fahrenheit_to_celsius(98.6)


# 3. Create a vector of normally distributed data, length 100, mean 35, and SD 15.
# The function calculates mean, median, and range, and plots a histogram with a density curve.
generate_data_analysis <- function() {
  # Generate the data
  data <- rnorm(100, mean = 35, sd = 15)
  
  # Calculate mean, median, and range
  data_mean <- mean(data)
  data_median <- median(data)
  data_range <- range(data)
  
  # Print the calculated values with labels
  print(paste("Mean:", data_mean))
  print(paste("Median:", data_median))
  print(paste("Range:", paste(data_range, collapse = " - ")))
  
  # Plot the histogram as a proportion
  hist(data, probability = TRUE, main = "Histogram with Density Curve", xlab = "Values", ylab = "Proportion", col = "lightblue")
  
  # Add a density curve
  lines(density(data), col = "red", lwd = 2)
}

# Run the function to perform the analysis and plotting
generate_data_analysis()


# 4. Write a function to calculate the median of a vector manually.
# The function finds the median of a vector, handling both odd and even-sized vectors.
median_func <- function(x) {
  x <- sort(x)
  n <- length(x)
  
  # Check if the vector length is odd or even
  if (n %% 2 == 1) {
    # Odd length, median is the middle value
    median_value <- x[(n + 1) / 2]
  } else {
    # Even length, median is the average of the two middle values
    median_value <- (x[n / 2] + x[(n / 2) + 1]) / 2
  }
  
  return(median_value)
}

# Test the function on vectors with odd and even sample sizes
odd_vector <- c(1, 3, 5, 7, 9)
even_vector <- c(2, 4, 6, 8, 10, 12)

odd_median <- median_func(odd_vector)
even_median <- median_func(even_vector)

print(paste("Manual Median of odd vector:", odd_median))
print(paste("Manual Median of even vector:", even_median))

# 5. Function to simulate the Ricker model
ricker_model <- function(nzero, r, time, K = 100) {
  # Initialize a vector to store population sizes over time
  population <- numeric(time + 1)
  
  # Set the initial population size
  population[1] <- nzero
  
  # Loop through each time step and calculate the population size
  for (t in 1:time) {
    population[t + 1] <- population[t] * exp(r * (1 - population[t] / K))
  }
  
  # Return the population sizes over time
  return(population)
}

# Example usage of the function
nzero <- 10  # Initial population size
r <- 0.5     # Population growth rate
time <- 50   # Number of time steps
K <- 100     # Carrying capacity (can be adjusted)

# Run the simulation
population_over_time <- ricker_model(nzero, r, time, K)

# Print the results
print(population_over_time)

# Plot the results to visualize population dynamics
plot(0:time, population_over_time, type = "o", col = "blue",
     xlab = "Time", ylab = "Population Size", main = "Ricker Model Simulation")

