#Vectors (one dimensional array): can hold numeric, character or logical values. The elements in a vector all have the same data type.
#Matrices (two dimensional array): can hold numeric, character or logical values. The elements in a matrix all have the same data type.
#Data frames (two-dimensional objects): can hold numeric, character or logical values. Within a column all elements have the same data type, but different columns can be of different data type
#A list in R allows you to gather a variety of objects under one name (that is, the name of the list) in an ordered way. These objects can be matrices, vectors, data frames, even other lists, etc. It is not even required that these objects are related to each other in any way.
#You could say that a list is some kind super data type: you can store practically any piece of information in it!
#Only Data frames and matrics can contain multiple data types.

# Vector with numerics from 1 up to 10
my_vector <- 1:10 
print(my_vector)

# Matrix with numerics from 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)
print(my_matrix)

# First 10 elements of the built-in data frame mtcars
my_df <- mtcars[1:10,]
print(my_df)

# Construct list with these different elements:
my_list <- list(my_vector, my_matrix, my_df)
print(my_list)

#Creating a named list
names(my_list) <- c("vec", "mat", "df")
print(my_list)

#Selecting elements from a list
my_list$mat
#another way
my_list["mat"]
my_list$mat[2]

my_list$vec
my_list["vec"]


#Adding more information to the list
my_list_full <- c(my_list, year = 1980)
print(my_list_full)

p <- c(22, 24, 49, 18, 1, 6)
p[c(1, 5)]
p[p > 21]
p == 22