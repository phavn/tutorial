x <- 10:1
y <- -4:5
q <- c("Hockey","Football","Baseball","Curling","Rugby","Lacrosse","Basketball","Tennis","Cricket","Soccer")

theDF <- data.frame(x, y, q)
theDF
theDF <- data.frame(First=x, Second=y, Sport=q)
class(theDF$Sport)

theDF <- data.frame(First=x,Second=y,Sport=q,stringsAsFactors=FALSE)
class(theDF$Sport)

nrow(theDF)
ncol(theDF)
dim(theDF)
names(theDF)
names(theDF)[3]

rownames(theDF)
rownames(theDF) <- c("one","two","three","four","five","six","seven","eight","nine","ten")
rownames(theDF)
theDF
rownames(theDF) <- NULL
theDF

head(theDF)
head(theDF,n=9)

tail(theDF)
tail(theDF,n=8)
class(theDF)

theDF$Sport
theDF[3, 2] # 3rd row, 2nd column
theDF[3, 1:3]
theDF[c(3,5),1:3]
theDF[,3] # Returns vector
theDF[,2:3] # Returns dataframe
theDF[,3,drop=FALSE] # Returns dataframe
theDF[2:5,]

theDF[,c("First","Sport")]
theDF[,c("Sport","First")]

theDF["Sport"] # returns dataframe
theDF[["Sport"]] # returns vector

h1 <- c("host1","host4","host9")
h2 <- c("host1","host2","host3","host4","host5","host6","host7")
f1 <- c("John1","John2","John3","John4","John5","John6","John7")

hostnamesDF <- data.frame(Hostname=h1)
fullDF <- data.frame(Hostname=h2,Contact=f1)

hostnamesDF
fullDF

fullDF$Hostname %in% hostnamesDF$Hostname

require(compare)

comparison <- compare(hostnamesDF, fullDF, allowAll=FALSE)
comparison$tM



