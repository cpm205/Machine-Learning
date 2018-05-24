x <- list(foo = 2:5, bar =0.6);

x

x[1];

x[2]

x[[1]]  ## single braket always returs a list

x$bar

x[["bar"]] ## same as x$bar

x["bar"]

## to extract mutiple elements of a list
y <- list(foo=1:4,bar=0.6,baz="hello")

y[c(1,3)] ## cannot use double braket to extract a list

##subsetting nested elements of a list
z <- list(a=list(10,12,14),b=c(3.14,2.81))

z[[c(1,3)]]

z[[1]][[3]]

z[[c(2,1)]]
