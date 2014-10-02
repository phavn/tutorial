data(diamonds)
head(diamonds)

plot(diamonds$carat, diamonds$price)
plot(price ~ carat, data=diamonds)

boxplot(diamonds$carat)


require(ggplot2)
ggplot(data=diamonds) + geom_histogram(aes(x=carat))
ggplot(data=diamonds) + geom_histogram(aes(x=carat), binwidth=.1)

ggplot(data=diamonds) + geom_density(aes(x=carat))
ggplot(data=diamonds) + geom_density(aes(x=carat), fill="grey50")

ggplot(diamonds, aes(x=carat,y=price)) + geom_point()
g <- ggplot(diamonds, aes(x=carat,y=price))
g
g + geom_point()
g + geom_point(aes(color=color))
g + geom_point(aes(color=color, shape=clarity))
g + geom_point(aes(color=color, shape=cut))


ggplot(diamonds,aes(y=carat,x=1)) + geom_boxplot()
ggplot(diamonds,aes(y=carat,x=cut)) + geom_boxplot()
ggplot(diamonds,aes(y=carat,x=cut)) + geom_violin()
g <- ggplot(diamonds,aes(y=carat,x=cut))
g + geom_point() + geom_violin()
g + geom_violin() + geom_point()
g + geom_jitter() + geom_violin()
