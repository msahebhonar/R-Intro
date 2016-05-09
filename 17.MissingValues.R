# Missing values; NA (not available)
y <- c(1, 5, 6, NA, 10)
is.na(y)
!is.na(y)
y[!is.na(y)]
which(is.na(y))

z <- c("Mohammad", NA, "Sahebhonar", "NA")
is.na(z)
z[!is.na(z)]

var(8)
z[6]
NA + 1

sum(y)
sum(y, na.rm = T)

set.seed(1234)
id <- c(1:20)
race <- sample(c("white", "black", "others", NA), 20, replace = T)
race
sex <- sample(c("male", "female", NA), 20, replace = T)
education <- sample(c("high-school", "under-grad", "post-grad", NA), 20, replace = T)
data <- data.frame(id, race, sex, education)
View(data)
complete <- complete.cases(data)
complete

as.integer(complete)
sum(complete)
data[complete, ]
na.omit(data)

# Infinity
7 / 0
-4 / 0

exp(-Inf)
0/ Inf

x <- 3 / 0
x
y <- 5 / 2
y
is.infinite(x)
is.infinite(y)
is.finite(x)
is.finite(y)

# Things that are not numbers; NaN (not a number)
0 / 0
Inf - Inf
Inf / Inf

sqrt(-9)
log(-10)
asin(1.5)

w <- c(NA, 0:4, Inf) / Inf
w
is.nan(w)
is.na(w)
