# Basic operations
(mat <- matrix(c(7, 4, 13, 6), nrow = 2, ncol = 2))
rowSums(mat)
colSums(mat)
rowMeans(mat)
colMeans(mat)

# Matrix addition & subtraction
mat1 <- matrix(1:6, 2, 3) ; mat1
mat2 <- matrix(c(rep(1, 2), rep(2, 2), rep(3, 2)), 2, 3) ; mat2
dim(mat1)
dim(mat2)
mat1 + mat2
mat1 - mat2

# Diagonal matrix
(I <- diag(nrow = 2, ncol = 2))
(d <- diag(c(2, 3, 4)))

# Matrix transpose
mat1
t(mat1)

# Matrix trace
(mat3 <- matrix(seq(4, 10, 2), 2))
library(psych)
tr(mat3)

# Powers of a matrix
mat3
mat3 ^ 2

# Scalar multiplication
mat3
2 * mat3

# Product of two matrices
(a <- matrix(c(3, 2, 1, 2, 10, 8), nrow = 2, ncol = 3))
(b <- matrix(c(5, 6, 9, 3, 10, 8, 3, 2, 3, 4, 2, 1), nrow = 3, ncol = 4, byrow = T))
dim(a)
dim(b)

a %*% b
t(b) %*% t(a)

# OLSE solution
x <- matrix(c(1, 1, 0, 1, 1, 0, 1, 0, 1, 1, 0, 1), nrow = 4, byrow = T) ; x
y <- matrix(c(10, 15, 4, 2), nrow = 4)
y

t(x) %*% x
crossprod(x)

t(x) %*% y
crossprod(x, y)

x %*% t(x)
tcrossprod(x)

# Element-wise multiplication (Hadamard product)
(d <- matrix(c(2, 4, 0, 1, -1, 3), nrow = 2, ncol = 3))
(e <- matrix(c(1, 2, 3, 0, 7, 6), nrow = 2, ncol = 3))
dim(d)
dim(e)
d * e

# Kronecker product
mat3
(mat4 <- matrix(c(1, 2, 3, 4), nrow = 2))
kronecker(mat3, mat4)
mat3 %x% mat4

# Outer product
mat3
mat4
outer(mat4, mat3, "*")
mat4 %o% mat3

# Matrix factorization
m <- matrix(c(25, 15, -5, 15, 18, 0, -5, 0, 11), nrow = 3) ; m
dim(m)

u <- chol(m) ; u
t(u) %*% u

s <- svd(m) ; s
s$u %*% diag(s$d) %*% t(s$v)

decomp <- qr(m) ; decomp
Q <- qr.Q(decomp) ; Q
round(crossprod(Q), 2)
round(tcrossprod(Q), 2)
R <- qr.R(decomp) ; R

# Inverse of a matrix
m
solve(m)
chol2inv(chol(m))

# Solve equations
m
y <- c(25, 10, 40) ; y
solve(m) %*% y
solve(m, y)
chol2inv(chol(m)) %*% y
QR <- qr(m)
Q <- qr.Q(QR)
R <- qr.R(QR)
bhat <- backsolve(R, crossprod(Q, y)) ; bhat
bhat <- solve.qr(QR, y) ; bhat 

# Moore-Penrose Generalized Inverse
B <- matrix(c(4, 2, 2, 6, 3, 3, 7, 5, 2), nrow = 3, byrow = T); B
cat("ncol=", ncol(B), "rank=", qr(B)$rank, "\n")
solve(B)

library(MASS)
ginv(B)

# Determinant of a Matrix
mat4
det(mat4)

m
det(m)
B
det(B)

# Eigenvalues & Eigenvectors
eigen(m)
chol(m)
eigen(B)
chol(B)
