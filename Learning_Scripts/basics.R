library(dslabs)
data(murders)
region <- murders$region
value <- murders$total
region <- reorder(region, value, FUN = sum)
levels(region)

