x <- list(aardwark = 1:5)
x
x$a ##partial matching
x[["a"]] ##Exact matching
x[["a", exact=FALSE]]  ##Turn off exact matching
