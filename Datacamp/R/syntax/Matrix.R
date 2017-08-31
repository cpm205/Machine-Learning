#Matrix and vector contains data which has same data-type
#In the matrix() function:
#The first argument is the collection of elements that R will arrange into the rows and columns of the matrix. Here, we use 1:9 which is a shortcut for c(1, 2, 3, 4, 5, 6, 7, 8, 9).
#The argument byrow indicates that the matrix is filled by the rows. If we want the matrix to be filled by the columns, we just place byrow = FALSE.
#The third argument nrow indicates that the matrix should have three rows.

matrix(1:9, byrow = TRUE, nrow = 3)

matrix(1:9, byrow = FALSE, nrow = 3)

matrix(
  1:4, nrow = 2, byrow = TRUE, dimnames = list(c("x", "z"), c("q", "r"))
)


l <- list(c("x", "z"), c("q", "r"))
print(l)


x <- matrix(1:6, nrow = 2)
rbind(x, c(10, 12, 14))


x <- matrix(1:6, nrow = 2)
cbind(x, c(10, 12, 14))


