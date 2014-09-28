x <- 1:10
mean(x)
sum(x)
nchar(x)

mean(x=x, trim=.1)

x[c(2,6)] <- NA
x

mean(x)
mean(x,na.rm = TRUE)
