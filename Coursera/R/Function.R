add2 <- function(x,y){
  x +y
}

above10 <- function(x)
{
  Use <- x > 10  ##factor
  x[Use]
}

above <- function(x,n){
  use <- x > n
  x[use]
}

##default value in function
above <- function(x,n=10){
  use <- x>n
  x[use]
}

columnmean <- function(y){
  nc <- ncol(y)
  means <- numeric(nc)
  for(i in 1:nc){
    means[i] <- mean(y[,i])
  }
  means
}

## Function arg can be missing or might have default value
## If you named the argument(s) of function, then you don't need to supply the args in order
mydata <- rnorm(100)
mydata
sd(x = mydata)
sd(x = mydata, na.rm = FALSE)
sd(na.rm = FALSE, x = mydata)
sd(na.rm = FALSE, mydata)

x <- 5
y <- if(x < 3) {
  NA
} else {
  10
}
y

