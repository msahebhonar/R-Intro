# Data import from excel file
library(gdata)
cncost2 <- read.xls("~/Downloads/cncost.xls", sheet = 1, verbose = T, header = F, skip = 7, nrows = 46, na.strings = "--")

# Data import from zip file
download.file("http://archive.ics.uci.edu/ml/machine-learning-databases/wine/wine.data", "~/wine.csv")
wine <- read.csv(gzfile("wine.gz"), header = F)

# Data import from clipboard
pop <- read.csv(stdin())
