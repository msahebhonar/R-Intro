#Data Frames
newMat
str(newMat)
eye.color <- c("black", "blue", "brown", "black", "green")
newMat <- rbind(newMat, eye.color)
newMat
str(newMat)

data <- data.frame(ID = id, Height = height, Weight = weight, eyeColor = eye.color, Sex = gender, Status = c(F, T, T, F, T), stringsAsFactors = F)
data
View(data)
class(data)
str(data)
dim(data)
data[1, ]
data[, 2]
data[3, "Weight"]
data$Height
data$Status
data$eyeColor[2]

data("airquality")
View(airquality)
str(airquality)

#Lists
a <- rbinom(3, 10, 0.5)
a
b <- rnorm(5)
b
c <- LETTERS[10:15]
c
d <- rep(c(T, F), 2)
d
l <- list(binom = a, normal = b, char = c, logic = d)
l
class(l)
str(l)
l[1]
l[c(2, 3)]
l["char"]

l[[1]]
l[[1]][2]
l$char
l$normal[3]

sub1 <- l[1]
sub1
class(sub1)
sub2 <- l[[1]]
sub2
class(sub2)

j <- letters
j[j > "k" & j < "s"]

#Cleaning up
ls()
ls(pattern = "s")
rm("s1", "sub1", "sub2")
ls()
rm(list = ls())
ls()
