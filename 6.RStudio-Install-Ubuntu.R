data("iris")
stripchart(iris$Sepal.Length ~ iris$Species, vertical = T, method = "jitter", bg = 7, pch = 21)
