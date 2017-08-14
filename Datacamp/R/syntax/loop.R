#Loop over a Vector
# The linkedin vector has already been defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)

# Loop version 1
for (l in linkedin) {
  print(l)
}

# Loop version 2
for (i in 1:length(linkedin)) {
  print(linkedin[i])
}



#Loop over a list
nyc <- list(pop = 8405837, 
            boroughs = c("Manhattan", "Bronx", "Brooklyn", "Queens", "Staten Island"), 
            capital = FALSE)

# Loop version 1
for (n in nyc) {
  print(n)
}

# Loop version 2
#Notice that you need double square brackets - [[ ]] - to select the list elements in loop version 2.
for (i in 1:length(nyc)) {
  print(nyc[[i]])
}

for (i in 1:length(nyc)) {
  print(nyc[i])
}


#loop over a matrix
# define the double for loop
for (i in 1:nrow(ttt)) {
  for (j in 1:ncol(ttt)) {
    print(paste("On row", i, "and column", j, "the board contains", ttt[i,j]))
  }
}


# Pre-defined variables
rquote <- "r's internals are irrefutably intriguing"
chars <- strsplit(rquote, split = "")[[1]]

# Initialize rcount
rcount <- 0

# Finish the for loop
for (char in chars) {
  if(char == "r"){
    rcount <- rcount + 1
  }
  
  if(char == "u"){
    break
  }
}

# Print out rcount
print(rcount)
