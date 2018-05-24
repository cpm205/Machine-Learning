search()
## ----df, message = FALSE-------------------------------------------------
if (!require("ggplot2")) {
    install.packages("ggplot2")
  
}

require(ggplot2)
## Set a value
newvar <- 4
newvar

## create a Vector
newvector <- c(2, 3, "Pirate", 3.1, 49)
newvector
#create a Matrix
neomatrix <- matrix(1:20, ncol = 5, nrow = 4)
neomatrix

#create a dataframe
ReleaseYear <- c(1989, 1999, 2008)
MovieTitle <- c("Bill and Ted's Excellent Adventure", "Matrix", "The Day the Earth Stood Still")
Rating <- c(3.3, 4.0, 3.0)
onedataframe <- data.frame(ReleaseYear, MovieTitle, Rating)
onedataframe

#load up some data
bankData <- read.table("c:/data/bank-full.csv",
                       header = T, sep = ";",
                       stringsAsFactors = F)

## look at it
bankData
# Now investigate the structure of bankData
str(bankData)

# Print the first few rows.
head(bankData)

# Print the last 6 lines.  
tail(bankData)

# Find out what kind of object it is.
class(bankData)

# Look at the dimension of the data frame.
dim(bankData)

##create up a simple Graph
ggplot(bankData, aes(x = month, y = duration)) +
  geom_point(color = "green")
