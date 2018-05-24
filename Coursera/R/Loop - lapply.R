x <- list(a = 1:5, b = rnorm(10))
x
lapply(x,mean) ##Run mean function against the list a and list b

y <- 1:4
y
lapply(y, runif) ##Run runif function against the list y

z <- 1:4
z
lapply(z, runif,min=0, max = 10)##Run runif function against the list z with params - min and max that function runif needs

##using anonymous function
lst <- list(a = matrix(1:4,2,2), b = matrix(1:6,3,2))
lst

lapply(lst, function(elt) elt[,1])