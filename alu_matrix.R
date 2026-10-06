A <- matrix(c(1, 2, 3, 4), nrow = 2, ncol = 2)
B <- matrix(c(5, 6, 7, 8), nrow = 2, ncol = 2)
addition <- A + B
subtraction <- A - B
multiplication <- A %*% B
print(A)
print(B)
print(addition)
print(subtraction)
print(multiplication)