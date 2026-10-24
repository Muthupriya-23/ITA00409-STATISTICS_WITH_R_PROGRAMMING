# Create advertising dataset
advertising <- data.frame(
  Spend = c(10, 20, 30, 40, 50, 60),
  Sales = c(15, 25, 35, 40, 50, 60)
)

# Build regression model
model <- lm(Sales ~ Spend, data = advertising)

# Display model summary
summary(model)

# Predict sales for Spend = 70
new_data <- data.frame(Spend = 70)
predicted_sales <- predict(model, newdata = new_data)

print(predicted_sales)

# Calculate model error
predicted <- predict(model, newdata = advertising)
mse <- mean((advertising$Sales - predicted)^2)
print(mse)