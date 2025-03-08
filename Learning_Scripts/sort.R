library(dslabs)
data(murders)

#1. Use the $ operator to access the population size data and store it as the object pop. Then use the sort function to redefine pop so that it is sorted. Finally, use the [ operator to report the smallest population size.
pop <- murders$population
pop <- sort(pop)
pop[1]

#2. Now instead of the smallest population size, find the index of the entry with the smallest population size. Hint: use order instead of sort.
popu <- murders$population
index_sm <- order(popu)

#3. We can actually perform the same operation as in the previous exercise using the function which.min. Write one line of code that does this.
sm <- which.min(pop)

#4. Now we know how small the smallest state is and we know which row represents it. Which state is it? Define a variable states to be the state names from the murders data frame. Report the name of the state with the smallest population.
state <- murders$state
murders$state[51]

ranks <- rank(popu)

my_df <- data.frame(name = murders$state, rank = sort(ranks))
my_df