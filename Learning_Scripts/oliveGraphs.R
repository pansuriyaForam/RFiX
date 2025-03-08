# Load necessary library and data
library(dslabs)
data(olive)

# Extract palmitic and palmitoleic acid values
x <- olive$palmitic
y <- olive$palmitoleic
# Create the scatterplot
plot(x, y, main = "Scatterplot of Palmitic vs. Palmitoleic Acid", xlab = "Palmitic Acid (%)", ylab = "Palmitoleic Acid (%)")


# Create a histogram of the percentage of eicosenoic acid
hist(olive$eicosenoic, main = "Histogram of Eicosenoic Acid (%)", xlab = "Eicosenoic Acid (%)", col = "lightblue", border = "black")


# Create a boxplot of palmitic acid percentage for each region
boxplot(palmitic ~ region, data = olive, 
        main = "Boxplot of Palmitic Acid Percentage by Region",
        xlab = "Region", ylab = "Palmitic Acid (%)",
        col = "lightblue", border = "black")
