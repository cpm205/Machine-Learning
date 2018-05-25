#lapply can only apply A Function Over A List Or Vector


# The vector pioneers has already been created for you
pioneers <- c("GAUSS:1777", "BAYES:1702", "PASCAL:1623", "PEARSON:1857")

# Split names from birth year
split_math <- strsplit(pioneers, split = ":")

# Convert to lowercase strings: 
split_low <- lapply(split_math, tolower)

# Take a look at the structure of split_low
str(split_low)
unlist(split_low)


# Code from previous exercise:
pioneers <- c("GAUSS:1777", "BAYES:1702", "PASCAL:1623", "PEARSON:1857")
split <- strsplit(pioneers, split = ":")
split_low <- lapply(split, tolower)
print(split_low)

# Write function select_first()
select_first <- function(x) {
  x[1]
}

# Apply select_first() over split_low: names
names <- lapply(split_low,select_first)
print(names)

# Write function select_second()
select_second <- function(x){
  x[2]
}

# Apply select_second() over split_low: years
years <- lapply(split_low,select_second)
print(years)


# Transform: use anonymous function inside lapply
names <- lapply(split_low,  function(x) { x[1] })
print(names)

# Transform: use anonymous function inside lapply
years <- lapply(split_low, function(x) {x[2] })
print(years)



# Generic select function
select_el <- function(x, index) {
  x[index]
}

# Use lapply() twice on split_low: names and years
names<-lapply(lapply(split_low,select_el,index=1),select_el)
years<-lapply(lapply(split_low,select_el,index=2),select_el)