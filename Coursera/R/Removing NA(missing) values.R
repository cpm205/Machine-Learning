x <- c(1,2,NA,4,NA,5)
x

bad <- is.na(x)
bad

x[!bad]

x <- c(1,2,NA,4,NA,5)
x2 <- c("a","b",NA,"d",NA,"f")

x
x2

good<- complete.cases(x,x2)
good
x[good]
x[good]

##Remove NA values from DataFrame
df <- read.csv("hw1_data.csv")
df

df[1:6,]

good <- complete.cases(df)
good

df[good,][1:6,]
