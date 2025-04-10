# Linear regression using ggplot
library(ggplot2)
heart_data <- read.csv("HeartDisease.csv")
model <- lm(thalach ~ age, data = heart_data)
summary(model)
ggplot(heart_data, aes(x = age, y = thalach)) +
  geom_point(color = "blue") +
  geom_smooth(method = "lm", col = "red") +
  labs(title = "Age vs Max Heart Rate", x = "Age", y = "Thalach (Max Heart Rate)")


#Linear regression using built in dataset(iris)
data(iris)
model <- lm(Petal.Length ~ Sepal.Length, data = iris)
summary(model)
plot(iris$Sepal.Length, iris$Petal.Length,
     main = "Sepal Length vs Petal Length",
     xlab = "Sepal Length",
     ylab = "Petal Length",
     col = "blue",
     pch = 19)
abline(model, col = "red", lwd = 2)
predictions=predict(model,newdata = iris)
mse=mean(iris$Sepal.Length-predictions)^2
rmse=sqrt(mse)
rsq=summary(model)$r.squared
print(mse)
print(rmse)
print(rsq)
