name <- c("Mandi", "Amy", "Nicole", "Olivia")
distance <- c(0.8, 3.1, 2.8, 4.0)
time <- c(10, 30, 40, 50)

time_hour <- time / 60
speed <- distance / time_hour

olivia <- time_hour[which(name == "Olivia")]
mandi_speed <- speed[which(name == "Mandi")]
print(round(mandi_speed, 3))
