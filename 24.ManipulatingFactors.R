# Using Factors
data("InsectSprays")
View(InsectSprays)
str(InsectSprays)

levels(InsectSprays$spray)
nlevels(InsectSprays$spray)
unclass(InsectSprays$spray)

InsectSprays$spray <- reorder(InsectSprays$spray, InsectSprays$count, mean)
levels(InsectSprays$spray)
attr(InsectSprays$spray, "scores")

data("InsectSprays")
levels(InsectSprays$spray)
InsectSprays$spray <- relevel(InsectSprays$spray, "C")
levels(InsectSprays$spray)

# Manipulating Factors
set.seed(222)
l <- sample(letters, 20, replace = T); l
l <- factor(l); l
table(l)
table(l[1:5])
table(l[1:5, drop = T])

# Creating Factors from Continuous Variables
data("women")
View(women)
women.weight <- cut(women$weight, breaks = 3)
table(women.weight)
women.weight <- cut(women$weight, 3, labels = c("Low", "Medium", "High"))
table(women.weight)

weight_factor <- cut(women$weight, quantile(women$weight))
table(weight_factor)
quantile(women$weight)
