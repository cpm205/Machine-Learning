##Matrices are a special type of vector in R
##Matrices are vector with a dimension attribute

##Create a empty matrix 
m <- matrix(nrow = 2, ncol = 3)

## return the dimension of matrix
dim(m)

##print out all the attributes of the matrix
attributes(m)


##create a matrix with data
m2 <- matrix(1:6,2,3)

##Createa a matrix use dim() attribute
m3 <- 1:10
dim(m3) <- c(2,5)


##Create a matrix use cbind() function and rbind() function
x <- 1:3
y <- 10:12
cbind(x,y)

rbind(x,y)