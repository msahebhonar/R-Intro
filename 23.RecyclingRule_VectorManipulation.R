# The recycling rule
x <- 1:9; x
y <- c(10, 11, 12)
length(x)
length(y)

x + y
x + c(10, 11, 12, 10, 11, 12, 10, 11, 12)

w <- 1:5; w
v <- 1:3; v
length(w)
length(v)
w + v

# Vector manipulation
x
min(x)
max(x)
sum(x)

mean(x)
median(x)
range(x)
var(x)
sd(x)
quantile(x)

cumsum(x)
cumprod(x)
cummin(c(5, 3, 4, 2,6, 0))
cummax(c(5, 3, 4, 2,6, 0))

# Sorting, Ranking & Ordering Vectors
set.seed(1)
u <- sample(x); u
sort(u)
sort(u, decreasing = T)

l <- sort(sample(LETTERS, 10, replace = T)); l
rank(l)
rank(l, ties.method = "first")

u
ord <- order(u); ord
u[ord]
