tomato <- read.table("TomatoFirst.csv", header=TRUE, sep=",",stringsAsFactors=FALSE)
head(tomato)

save(tomato, file="TomatoFirst.rdata")
rm(tomato)
tomato
load("TomatoFirst.rdata")
tomato

n <- 20
r <- 1:10
w <- data.frame(n, r)
w
save(n, r, w, file="multiple.rdata")
rm(n,r,w)
n
r
w
load("multiple.rdata")
n
r
w

