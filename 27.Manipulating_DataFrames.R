# Manipulating Data Frames
library(MASS)
data(painters)
View(painters)
painters[c(1, 2), ]

# Sort data frame based on color
ord <- order(painters$Colour)
ord
painters.color <- painters[ord, ]
View(painters.color)
painters.color <- painters[rev(ord), ]
View(painters.color)
painters.color[c(1, 2), ]

# Sort data frame based on painters
row_names <- rownames(painters)
row_names
ord2 <- order(row_names)
ord2
painters.name <- painters[ord2, ]
View(painters.name)

# Sort data frame based on color & painters
ord3 <- order(painters$Colour, row_names)
painters.color.name <- painters[ord3, ]
View(painters.color.name)

ord3 <- order(-painters$Colour, row_names)
painters.color.name <- painters[ord3, ]
View(painters.color.name)

# Sort data frame based on color & school
ord4 <- order(-painters$Colour, -painters$School)
ord4 <- order(-painters$Colour, -rank(painters$School))
painters.color.school <- painters[ord4, ]
View(painters.color.school)

# Adding margins to a data frame
str(painters)
frame <- painters[, -5]
str(frame)
frame$rowMean <- rowMeans(frame)
View(frame)
frame <- rbind(frame, colMeans(frame))
rownames(frame)[55] <- "colMeans"
View(frame)

# Merge two data frames
students <- data.frame(id = c(101, 102, 103, 104), name = c("John", "David", "Jane", "Mary"), sex = c(1, 1, 2, 2))
students
register <- data.frame(id = c(101, 101, 102, 103, 103, 103, 105), courses = c("Math", "Biology", "Math", "Math", "Biology", "History", "Philosophy"))
register
merge(students, register)
merge(students, register, all.x = T)
merge(students, register, all.y = T)
merge(students, register, all = T)
