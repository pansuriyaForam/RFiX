library(dslabs)
data(murders)

# 1. Compute the per 100,000 murder rate for each state and store it in an object called murder_rate.
murder_rate <- (murders$total / murders$population) * 100000

# Use logical operators to create a logical vector named low that tells us which entries of murder_rate are lower than 1.
low <- murder_rate < 1

# 2. Use the results from the previous exercise and the function which to determine the indices of murder_rate associated with values lower than 1.
indices_low <- which(low) 

# 3. Use the results from the previous exercise to report the names of the states with murder rates lower than 1.
states_low <- murders$state[low]
print(states_low)

# 4. Now extend the code from exercises 2 and 3 to report the states in the Northeast with murder rates lower than 1.
choice_northeast <- low & murders$region == "Northeast"

# Get the states that are in the Northeast and have murder rates lower than 1
states_northeast_low <- murders$state[choice_northeast]
print(states_northeast_low)

# 5. In a previous exercise we computed the murder rate for each state and the average of these numbers. How many states are below the average?
# Calculate the average murder rate
Avg <- sum(murder_rate) / length(murder_rate)

# Create a logical vector for states with murder rates below the average
good <- murder_rate < Avg

# Get the names of the states that have murder rates below the average
states_below_avg <- murders$state[good]
states_below_avg

# How many states are below the average?
num_states_below_avg <- sum(good)  
num_states_below_avg

#6. Use the match function to identify the states with abbreviations AK, MI, and IA. Hint: start by defining an index of the entries of murders$abb that match the three abbreviations, then use the [ operator to extract the states.
mil <- match(c("AK", "MI", "IA"), murders$abb)
murders$state[mil]

#Use the %in% operator to create a logical vector that answers the question: which of the following are actual abbreviations: MA, ME, MI, MO, MU?
# Define the vector of abbreviations to check
ab <- c('MA', 'ME', 'MI', 'MO', 'MU')

# Check which abbreviations are in murders$abb
is_abbreviation <- ab %in% murders$abb

# Use the ! operator to find the one that is not an abbreviation
nope <- which(!is_abbreviation)

# Print the abbreviation that is not found in murders$abb
ab[nope]