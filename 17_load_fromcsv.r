"http://www.jaredlander.com/data/Tomato%20First.csv"

tomato <- read.table(file="TomatoFirst.csv", header = TRUE, sep = ",")
head(tomato, n = 5)
class(tomato$Tomato)


tomato <- read.table(file="TomatoFirst.csv", header = TRUE, sep = ",", stringsAsFactors=FALSE)
head(tomato, n = 5)
class(tomato$Tomato)

# If csv file is poorly formatted (missing data, bad separator). Slower but has intelligence to process bad csv files
read.csv2
