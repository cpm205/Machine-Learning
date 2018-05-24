##Use to store tabular data
##Data Frame is a special type of list where every element of the list 
##has to have the same length
##Data Frame store different classes of objects in each column.


## Create a data frame 
x <- data.frame(foo=1:4, bar=c(T,T,F,F))

## return number of rows
nrow(x)

##return number of columns
ncol(x)