# Which packages do I already have?
packages <- installed.packages()
View(packages)
packageDescription("MASS")

# What packages are available?
all.pack <- available.packages()
nrow(all.pack)
View(all.pack)
stat <- packageStatus()
stat

# Have I installed a specific package?
find.package("MASS")
find.package("psych")

# How can I add packages from CRAN?
install.packages("~/Downloads/psych_1.5.6.tar", repos = NULL, type = "binary")
library(psych)
install.packages("~/Downloads/mnormt_1.5-3.tar", repos = NULL, type = "binary")
library(psych)
library(UsingR)

packages <- installed.packages()
View(packages)

# How can I add packages from Bioconductor?
source("http://bioconductor.org/biocLite.R")
biocLite()
biocLite("GenomicFeatures")

# What functions & datasets are in a package?
library(help = "psych")

search()
