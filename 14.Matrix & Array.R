#Matrices
mn <- month.abb
mn
dim(mn)
dim(mn) <- c(3, 4)
mn

matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3)
matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3, byrow = T)

id <- c(1, 2, 3, 4, 5)
height <- c(162, 189, 175, 164, 180)
weight <- c(65, 92, 72, 70, 77)
m1 <- cbind(id, height, weight)
m1
m2 <- rbind(id, height, weight)
m2 

m2[2, 4]
m2[3, ]
m2[, 2]
m2[, 2, drop = F]
m2[1, , drop = F]

newMat <- matrix(c(1, 2, 3, 4, 5, 162, 189, 175, 164, 180, 65, 92, 72, 70, 77), nrow = 3, ncol =5, byrow = T)
rownames(newMat) <- c("id", "height", "weight")
colnames(newMat) <- paste0("r", 1:5)
newMat
class(newMat)
str(newMat)
attributes(newMat)
dim(newMat)
nrow(newMat)
ncol(newMat)

#Array
a <- 1:24
a
dim(a) <- c(2, 4, 3)
a
class(a)
dim(a)

array(1:12, c(2, 3, 2))
