exam_data <- data.frame(
  name = c("Arun", "Bala", "Chitra", "Divya", "Esha"),
  score = c(85, 72, 90, 65, 78),
  attempts = c(1, 2, 1, 3, 2),
  qualify = c(TRUE, TRUE, TRUE, FALSE, TRUE)
)
exam_data
exam_data$name
exam_data[1, ]
new_row <- data.frame(
  name = "Fathima",
  score = 88,
  attempts = 1,
  qualify = TRUE
)
exam_data <- rbind(exam_data, new_row)
exam_data$grade <- ifelse(exam_data$score >= 80, "A", "B")
exam_data <- exam_data[order(-exam_data$score), ]
exam_data
write.csv(exam_data, "exam_data.csv", row.names = FALSE)