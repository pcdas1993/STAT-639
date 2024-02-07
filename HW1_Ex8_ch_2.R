#Reading data
college <- read.csv("C:/Downloads/TAMU/STat639/STAT-639/College.csv")
View(college)


rownames(college) <- college[, 1]
View(college)
college <- college[, -1]
View(college)

summary(college)

college$Private <- as.factor(college$Private)
pairs(college[ , 1:10])


college$Private <- as.factor(college$Private)
plot(college$Outstate ~ college$Private)

Elite <- rep("No", nrow(college))
Elite[college$Top10perc > 50] <- "Yes"
Elite <- as.factor(Elite)
college$Elite <- Elite

summary(college$Elite)

plot(college$Outstate ~ college$Elite)

par(mfrow = c(2, 3))
hist(college$Apps, breaks = 6) 
hist(college$Accept, breaks = 7)
hist(college$Enroll, breaks = 6) 
hist(college$Top10perc, breaks = 6)
hist(college$Top25perc, breaks = 8) 
hist(college$Outstate, breaks = 10)

hist(college$Outstate, main="Histogram of Outstate Tuition Fees",
     xlab="Outstate Tuition Fees", col="blue", breaks=50)


par(mfrow = c(2, 3))
plot(college$S.F.Ratio ~ college$Private)
plot(college$Outstate ~ college$Private)
plot(college$Grad.Rate ~ college$Private)
plot(college$Grad.Rate ~ college$Personal)
plot(college$Grad.Rate ~ college$Outstate)


index_highest_GradRate <- which.max(college$Grad.Rate)

highest_GradRate <- college[index_highest_GradRate, ]

print(highest_GradRate)
