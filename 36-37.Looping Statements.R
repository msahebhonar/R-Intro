# repeat statement
cnt <- 0
repeat{
  cnt <- cnt + 1
  print(cnt)
}

# repeat with break
total <- 5
cnt <- 0
repeat{
  cnt <- cnt + 1
  print(cnt)
  if (cnt > total) {
    print("End of Numeration")
    break
  }
}

# repeat with next
total <- 5
cnt <- 0
repeat{
  cnt <- cnt + 1
  if (cnt > total) {
    print("End of Numeration")
    break
  }
  if (cnt %% 2 == 0) {
    print(paste("This is an Even Number!", cnt, sep = " "))
  }
  print(paste("This is an Odd Number!", cnt, sep = " "))
}

total <- 5
cnt <- 0
repeat{
  cnt <- cnt + 1
  if (cnt > total) {
    print("End of Numeration")
    break
  }
  if (cnt %% 2 == 0) {
    print(paste("This is an Even Number!", cnt, sep = " "))
    next
  }
  print(paste("This is an Odd Number!", cnt, sep = " "))
}

# while loop
total <- 5
cnt <- 0
while (cnt <= total) {
  print(paste("The number is", cnt, sep = " "))
  cnt = cnt + 1
}

# for loop
for (i in 1:5) {
  print(i ^ 2)
}

# if statement nested inside for loop
set.seed(1234)
for (cnt in sample(10:20)) {
  if (cnt %% 2 == 0) {
    next
  }
  if (cnt == 17) {
    break
  }
  print(paste("The number is", cnt, sep = " "))
}

# multiple for loops
m <- matrix(10:13, nrow = 2, ncol = 2) ; m
for (i in 1:nrow(m)) {
  sum = 0
  for (j in 1:ncol(m)) {
    sum = sum + m[i, j]
  }
  print(paste("row", i, sum, sep = " "))
}
rowSums(m)

# appending loops
set.seed(234)
m <- NULL
system.time(
  for (i in 1:20000) {
  s <- mean(rgamma(1000, 1, 2))
  m <- rbind(m, s)
})
hist(m)

set.seed(234)
myData <- numeric(20000)
system.time(
  for (i in 1:20000) {
    myData[i] <- mean(rgamma(1000, 1, 2))
  }
)
hist(myData)
