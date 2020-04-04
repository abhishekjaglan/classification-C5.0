install.packages("C50")
library(C50)
data(iris)
head(iris)
str(iris)
table(iris$Species)
set.seed(9850)
q <- runif(nrow(iris))
irisr <- iris[order(q),]
head(irisr)
model1 <- C5.0(irisr[1:100,-5], irisr[1:100,5])
model1
plot(model1)
summary(model1)
p <- predict(model1, irisr[101:150,])
p
table(irisr[101:150,5],p)
