data(iris)
set.seed(123)
i <- sample(1:150, 120)
train <- iris[i, ]
test <- iris[-i, ]

model <- MASS::lda(Species ~ Petal.Length + Petal.Width,
                   data=train)
pred <- predict(model, test)$class

print(table(Actual=test$Species, Predicted=pred))