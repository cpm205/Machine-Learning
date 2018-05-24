x1 <- 10
x2 <- 20

library(datasets)
Rprof()
fit <- lm(y ~ x1 + x2)
Rprof(NULL)