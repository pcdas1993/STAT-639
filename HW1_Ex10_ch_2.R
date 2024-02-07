library(ISLR2)
View(Boston)
?Boston
pairs(
  ~ crim + indus + nox + rm + age + lstat + medv,
  data = Boston
)

summary(Boston$crim)
summary(Boston$tax)
summary(Boston$ptratio)
range(Boston$crim)
range(Boston$tax)
range(Boston$ptratio)

par(mfrow = c(1, 3))
hist(Boston$crim, main="Histogram of Crime Rates", xlab="Crime Rate", col="red", 
     breaks=30)
hist(Boston$tax, main="Histogram of Tax Rates", xlab="Tax Rate", col="blue", 
     breaks=30)
hist(Boston$ptratio, main="Histogram of Pupil-Teacher Ratios", 
     xlab="Pupil-Teacher Ratio", col="green", breaks=30)


numoftracts_chas <- sum(Boston$chas == 1)

print(numoftracts_chas)

median(Boston$ptratio)

min(Boston$medv)


index_lowest_medv <- which.min(Boston$medv)

lowest_medv <- Boston[index_lowest_medv, ]

print(lowest_medv)


print(summary(Boston))


More_than_7 <- sum(Boston$rm > 7)
print(More_than_7)

More_than_8 <- sum(Boston$rm > 8)
print(More_than_8)



tracts_with_8_plus_rooms <- Boston[Boston$rm > 8, ]

# Viewing some details of these tracts
summary(tracts_with_8_plus_rooms[c("medv", "crim", "chas")])

