# Load built-in dataset
data(ChickWeight)

# Convert Diet into categorical variable
ChickWeight$Diet <- as.factor(ChickWeight$Diet)

# Build multiple regression model
model <- lm(weight ~ Time + Diet, data = ChickWeight)

# Display model summary
summary(model)

# Predict weight
new_data <- data.frame(
  Time = c(10, 20, 30),
  Diet = factor(c(1, 2, 3),
                levels = levels(ChickWeight$Diet))
)

predicted_weight <- predict(model, newdata = new_data)
print(predicted_weight)

# Calculate predictions for original data
predicted <- predict(model, newdata = ChickWeight)

# Calculate model error
mse <- mean((ChickWeight$weight - predicted)^2)
rmse <- sqrt(mse)

cat("Mean Squared Error:", mse, "\n")
cat("Root Mean Squared Error:", rmse, "\n")