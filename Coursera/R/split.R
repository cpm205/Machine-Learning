##split a vector or other objects and splits it into groups
x <- c(rnorm(10),runif(10),rnorm(10,1))
f <- gl(3,10)
split(x,f)


## split example data frame by month
df <- read.csv("hw1_data.csv")
s <- split(df,df$Month)
s

##use sapply() function to calculate mean
sapply(s, function(df) colMeans(df[,c("Ozone","Wind")],na.rm=TRUE))