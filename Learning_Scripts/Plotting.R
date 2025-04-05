library(dplyr)
dt_frm <- data.frame(
  Name = c("Amm", "Bnn", "Coo"),
  Score = c(100, 150, 120),
  Age = c(93, 53, 43)
)

# Create a scatter plot of the "Score" vs "Age" from the previous data frame(DataWrangling).
plot(dt_frm$Age, dt_frm$Score,
     main = "Score vs Age",
     xlab = "Age", ylab = "Score",
     col = "blue", pch = 20)
