library(dslabs)
data(murders)

a <- murders$state
b <- murders$abb

#Use the identical function to determine if a and b are the same.
is <- a == b
print(is)

#With one line of code, use the function levels and length to determine the number of regions defined by this dataset.
length(levels(murders$region))


#The function table takes a vector and returns the frequency of each element. You can quickly see how many states are in each region by applying this function. Use this function in one line of code to create a table of states per region.
table(murders$region)

