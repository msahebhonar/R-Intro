# Current working directory
getwd()
dir()
file.rename("~/Downloads/adult.data.txt", "~/Downloads/adult.txt")
setwd("~/Downloads/")
dir()

# Data import using read.table() & read.csv()
cncost <- read.table(file = "cncost-tab.csv", header = F, sep = "\t", skip = 7, nrows = 46, na.strings = "--")

adult <- read.csv("adult.txt", na.strings = " ?")
str(adult)

baby <- read.csv(file.choose())
str(baby)
baby <- read.csv("Baby-Names-2013.csv", stringsAsFactors = F)
str(baby)
baby <- read.csv("Baby-Names-2013.csv", colClasses = c("integer", "character", "factor", "integer"))
str(baby)
baby2 <- read.csv2("Baby-Modified")

object.size(adult)
