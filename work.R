cer <- read.csv("healthy-breakfeast.csv")
plot(lm(rating ~ sugars,data=cereal))
plot(lm(rating ~ sugars,data=cer))
cer
order(cer[cer['rating']])
order(cer[cer['rating'],])
order(cer['rating',])
order(cer[,'rating'])
order(cer[cer[,'rating']])
order(cer[cer[,'rating'],])
order(cer[,cer[,'rating']])
cer
plot(cer)
library(ggplot2)
ggplot(cer, aes(rating,potass)) + geom_point()
c1
c1 <- lm(rating ~ sugars, data=cer)
summary(c1)
plot(cer$rating, cer$sugars, col="blue", pch=16, cex=1.5)
abline(c1,col="red",lwd=2)
g <- ggplot(cer, aes(rating,potass)) + geom_point()
g
g + geom_smooth(method = "lm", se = FALSE)
order(cer['rating'])
order(cer[cer['rating'],])
order(cer[cer['rating']])
order(cer[,cer['rating']])
cer['rating']
order(cer[cer['rating']])
order(cer[cer['rating',]])
order(cer[cer[,'rating']])
order(cer[cer[,'rating'],])
order(cer[cer['rating',],])
order(cer[cer['rating',]])
c2 <- lm(rating ~ calories + fat + sugars, data=cer)
c2
summary(c2)
g <- ggplot(cer, aes(rating,fat)) + geom_point()
g
g + geom_smooth(method = "lm", se = FALSE)
c3 <- lm(rating ~ sugars + protein, data=cer)
summary(c3)
c3 <- lm(rating ~ sugars + protein + calories, data=cer)
c3
summary(c3)
c4 <- lm(rating ~ sugars + protein + fiber, data=cer)
summary(c4)
c4 <- lm(rating ~ sugars + fiber, data=cer)
summary(c4)
c4 <- lm(rating ~ sugars + fiber + calories, data=cer)
summary(c4)
summary(lm(rating ~ sugars + fiber + fat, data=cer))
summary(lm(rating ~ sugars + fiber + fat + protein, data=cer))
summary(lm(rating ~ ., data=cer))
summary(lm(rating ~ vitamins + sugars + carbo + fiber + sodium + fat + protein + calories + shelf + weight + cups, data=cer))
ggplot(cer, aes(rating,weight)) + geom_point()
summary(lm(rating ~ vitamins + sugars + carbo + fiber + sodium + fat + protein + calories, data=cer))
plot(cereal)
plot(cer)
savehistory()
