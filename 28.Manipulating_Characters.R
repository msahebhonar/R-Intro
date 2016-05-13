# Character Manipulation
state.name
length(state.name)

nchar(state.name)
toupper(state.name)
tolower(state.name)
noquote(state.name)

# Displaying Character Strings
x <- 5
y <- 8
cat("x =", x, "& y =", y)

test <- function(){
  cat("Insert your number", "\n")
  temp <- scan(nmax = 1, quiet = T)
  if(temp %% 2 == 0)
    cat("Number:", temp, "is an even number", "\n")
  else
    cat("Number:", temp, "is an odd number", "\n")
}
test()
4
test()
9

paste("This video is recorded on", Sys.Date())
paste("x", 1:4, sep = "_")
paste0("r", 1:4)
paste("r", 1:4, sep = "")
paste0(getwd(), "/myFile.txt")

paste(LETTERS, collapse = "")
paste(LETTERS, collapse = "|")

sprintf("%.2f", pi)
sprintf("This is an introduction to: %s - %1.1f", "R", 3.2)

# Extracting Parts of Character Strings
genes <- data.frame(geneName = c("ABO", "BRCA2", "SRY"), position = c("chr7:34589430", "chr9:135120384", "chrY:2714897"),stringsAsFactors = F)
genes
genes$chr <- substring(genes$position, 1, 4)
genes

# Breaking Apart Character Strings
w <- "Welcome to introduction to R"
strsplit(w, "")
strsplit(w, " ")
strsplit(w, "o")
unlist(strsplit(w, " "))

tel <- c("515-495-1000", "617-253-1000", "650-723-2300"); tel
sep <- strsplit(tel, "-")
sep
for(i in 1:3){
  cat(sep[[i]][1], "\n")
}