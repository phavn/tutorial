x <- c(1,2,3,4,5,6,7,8,9,10)



# Vectors are similar to arrays
# No loop is necesarry to manipulate data
x * 3
x + 2
x ^ 2
sqrt(x)

# Variables in R are stored as vectors

1:12
13:5
-2:9

x <- 1:10
y <- -5:4
x
y
x + y

length(x)
length(x+y)

x <= 5
x > y

any(x > y)
all(x > y)

q <- c("Hockey","Football", "Baseball", "Curling", "Rugby", "Lacrosse", "Basketball", "Tennis", "Cricket", "Soccer")
nchar(q)

x[1:3]
x[c(1,5)]


c(One="a", Two="y", Last="r")

w <- 1:3
names(w) <- c("a","b","c")
w

q2 <- c(q, "Racing", "BJJ", "Boxing", "Softball", "Hockey", "Lacrosse")
q2

# Unique and sort
q2Factor <- factor(q2)
q2Factor

z <- c(1,2,NA,8,3,NA,3)
z
is.na(z)

zChar <- c("Hockey", NA, "Lacrosse")
zChar
is.na(zChar)



