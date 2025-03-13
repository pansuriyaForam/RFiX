library(dplyr)

# Create a small data.frame with 3 columns: "Name", "Age", and "Score", with 5 rows.
dt_frm <- data.frame(
  Name = c("Amm", "Bnn", "Coo"),
  Score = c(100, 150, 120),
  Age = c(93, 53, 43)
)

# Select specific columns
selected_data <- dt_frm %>% select(Name, Score)

# Filter rows where Score is above 50
filtered_data <- data_frame %>% filter(Score > 100)


# Arrange by Age in descending order
arranged_data <- dt_frm %>% arrange(desc(Age))


# Print results
selected_data
filtered_data
arranged_data