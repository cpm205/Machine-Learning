#lapply(): apply function over list or vector, output = list
#sapply(): apply function over list or vector, try to simplify list to array
#vapply(): apply function over list or vector, explicity specify output format which means you have to specify the return type

lst <- list(
  a = c(30, 5, 18, 28, 29), 
  b = c(4, 12, 29, 30, 27)
)
vapply(lst, summary, numeric(6), USE.NAMES = TRUE)
vapply(lst, summary, numeric(6), USE.NAMES = FALSE)