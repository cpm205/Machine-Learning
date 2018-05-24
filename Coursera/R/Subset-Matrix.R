x <- matrix(1:6,2,3)
x
x[1,2] ##1 is row index, 2 is column index
x[2,2]


## Missing Index
x[1,] ##first Row
x[,2] ##second column

x[1,2] ## this returns a vector which only contains one element "1"
class(x[1,2])

x[1,2,drop=FALSE] ##this returns a matrix with row and column index
class(x[1,2,drop=FALSE]) 


