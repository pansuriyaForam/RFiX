library(dslabs)
data("murders")
murder_rate <- murders$total/murders$population*100000
murders$state[order(murder_rate, decreasing=TRUE)]
