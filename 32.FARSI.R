Sys.setlocale(locale = "persian")
myData <- read.table("Mortality.txt", sep = "\t", fileEncoding = "UCS-2LE", header = T)
View(myData)

# plot
plot(myData$Cause, las = 2, col = 4)
plot(myData$Cause, myData$Gender, col = c(2, 4))
plot(myData$Cause,myData$Age, las = 2, col = 8)

# table
tbl <- table(myData$Degree,myData$Cause) ; tbl
View(tbl)
tbl2 <- table(factor(myData$Gender), myData$Cause) ; tbl2
View(tbl2)
prop <- prop.table(tbl2, margin = 2) ; prop
View(prop)

# subscripting data frame
View(myData[myData$Cause == "????????",])

# save dataset
write.csv(myData, "myData.txt")

# read data
newData <- read.csv("myData.txt")
View(newData)
Sys.setlocale(locale="persian")
View(newData)
