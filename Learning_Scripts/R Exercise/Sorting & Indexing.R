# Generate a vector of 10 random numbers between 1 and 100.
vec <- seq(1, 100, length.out = 10)

# Sort in descending order
sorted_vec <- sort(vec, decreasing = TRUE)

# Extract the top 3 values
top_3 <- head(sorted_vec, 3)

# Print results
sorted_vec
top_3