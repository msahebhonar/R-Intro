#Vector
u <- 2
u

#numeric
x <- c(1.2, 5.6, 4.9, 5, 18)
class(x)
x[1]
x[3]
x[-1]

#Generating sequences
s1 <- seq(from = 1, to = 20, by = 2)
s1
class(s1)

#integer
y <- 20:40
y
class(y)
y[4:8]

#logical
z <- c(FALSE, FALSE, TRUE)
z
class(z)

#character
w <- c("A", "B")
w
class(w)
capitalAlph <- LETTERS
capitalAlph
capitalAlph[c(12, 15, 26)]
letters
month.abb
month.name

#raw vector
v <- vector("numeric", 4)
v
v[1] = 1
v[2] = 9
v[3] = 24
v[4] = 627
v
names(v) <- c("r1", "r2", "r3", "r4")
v
names(v)

prod <- c(m1 = 747, m2 = 767, m3 = 777, m4 = 787)
prod
names(prod)
prod["m1"]

length(prod)

q <- c(1, 2, "m", "s")
q
class(q)

#Replicating elements
r1 <- rep(4, 5)
r1
class(r1)
r2 <- rep(c(0, 1), 3)
r2
r3 <- rep(c("AA", "Aa", "aa"), each = 3)
r3
class(r3)
r4 <- rep(c(F, T), c(2, 5))
r4
class(r4)

#Factors
gender <- factor(c("female", "male", "male", "female", "female"))
gender
class(gender)
unclass(gender)
levels(gender)
nlevels(gender)

#Generating factor levels
gl(3, 4)
gl(3, 4, labels = c("hard", "medium", "soft"))
