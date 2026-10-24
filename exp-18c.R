marks <- c(80, 75, 90, 85)
students <- c("A", "B", "C", "D")

barplot(marks,
        names.arg = students,
        main = "Student Marks",
        xlab = "Students",
        ylab = "Marks",
        col = "orange")
