# logical operators
set.seed(1234)
num <- sample(1:10) ; num
num[1] < 5
num[3] > 8
num[1] < 5 & num[2] < 8
num[4] > 5 | num[9] < 8

# if statements
x <- 5
if (x >= 0) {
  print("Positive number")
}

x <- -1
if (x >= 0) {
  print("Positive number")
}

# if-else statements
if (x >= 0) {
  print("Positive number")
}else{
  print("Negative number")
}

# multiple if-else statements
avg <- 83
if (avg >= 90) {
  print("A")
} else if (avg >= 80 & avg < 90) {
  print("B")
} else if (avg >= 70 & avg < 80) {
  print("C")
} else if (avg >= 65 & avg < 70) {
  print("D")
} else {
  print("E")
}

# switch function
v <- seq(1:10)
type <- "mean"
switch(type, 
       "mean" = mean(v),
       "median" = median(v),
       print("Not Implemented!")
       )

# vectorized ifelse
rnd <- rnorm(10) ; rnd
ifelse(rnd < 0, NA, rnd)
