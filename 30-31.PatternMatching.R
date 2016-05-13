# Pattern Matching
data("mtcars")
View(mtcars)
company <- rownames(mtcars) ; company

# grep & grepl
rgx <- grep("Merc", company)
rgx
mtcars[rgx,]
rgxl <- grepl("Merc", company); rgxl
mtcars[rgxl,]

mtcars[grep("M", company),]
mtcars[grep("^M", company),]
mtcars[grep("^m.[^s]", company, ignore.case = T),]
mtcars[grep("Mazda|Merc", company),]

mtcars[grep("^[S-Z]", company),]
mtcars[grep("^[S-Z].*a$", company),]

mtcars <- rbind(mtcars, c(10, 4, NA, 63, NA, 1.8, NA, NA, 1, 5, 1))
rownames(mtcars)[33] <- c("300 cent")
View(mtcars)
company <- rownames(mtcars); company
mtcars[grep("^\\d", company),]
mtcars[grep("[:digit:]$", company),]

# regexpr
merc <- mtcars[grep("^M", company),]; merc
tst <- regexpr("\\s\\d.*", rownames(merc)); tst
substring(rownames(merc), tst, tst + attr(tst, "match.length"))
substring(rownames(merc), tst + 1, tst + attr(tst, "match.length"))
model <- substring(rownames(merc), tst + 1, tst + attr(tst, "match.length"))
model[model != ""]

# gsub
rownames(mtcars) <- gsub("Merc", "Mercedes", rownames(mtcars))
View(mtcars)

# Example1
data <- read.table("cncost.csv", sep = "\t", skip = 7, nrows = 46, na.strings = "--", stringsAsFactors = F, col.names = paste0("col", 1:9))
str(data)
View(data)
data$col5 <- as.numeric(gsub(",", "", data$col5))
View(data)
str(data)

# Example2
myName <- "Mohammad+ Sahebhonar"; myName
gsub("(\\w*)\\+ (\\w*)", "\\2, \\1", myName)
gsub("(\\w*)[[:punct:]] (\\w*)", "\\2, \\1", myName)
