# Data Export
sim.data <- read.csv(stdin(), sep = "\t")

#1 dput
dput(sim.data, "sim-data.txt")
dir()
dget.data <- dget("sim-data.txt")

#2 dump
data(Titanic)
View(Titanic)
dump(c("sim.data", "Titanic"), "data.R")
dir()

rm(list = ls())
source("data.R")

#3 write.csv() or write.table()
write.csv(sim.data, "data.txt")
write.csv(sim.data, "data.txt", quote = F)
write.table(sim.data, "data-tab.txt", sep = "\t", quote = F)

zip.file <- gzfile("mydata.gz")
write.table(sim.data, sep = "\t", file = zip.file)
dir()

#4 save() | save.image()
save("sim.data", file = "simData.RData")

# Workspace
search()[1]
ls()
save.image("myEnv.RData")
