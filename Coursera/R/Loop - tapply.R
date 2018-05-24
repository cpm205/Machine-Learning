x <- c(rnorm(10),runif(10),rnorm(10,1))
f <- gl(3,10)
## above operation can be replaced by tapply
tapply(x, f, mean)