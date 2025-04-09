#Implement logistic regression using r

data(iris)

iris_bin <- subset(iris, Species %in% c("setosa", "versicolor"))

iris_bin$target <- ifelse(iris_bin$Species == "versicolor", 1, 0)

model <- glm(target ~ Petal.Length, data = iris_bin, family = binomial)

iris_bin <- iris_bin[order(iris_bin$Petal.Length), ]

predicted_probs <- predict(model, type = "response")

plot(iris_bin$Petal.Length, iris_bin$target, pch=19, col="blue",
     xlab="Petal Length", ylab="Probability of Versicolor",
     main="Logistic Regression (Iris)")
lines(iris_bin$Petal.Length, predicted_probs, col="red", lwd=2)

