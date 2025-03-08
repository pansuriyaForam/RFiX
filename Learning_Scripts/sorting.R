library(dslabs)
data("murders")
index <- order(murders$total)
murders$state[index]

x <- c(31, 4, 15, 92, 65)
x
sort(x) # sorted list
order(x) # index of the sorted elements in originol list
rank(x)
