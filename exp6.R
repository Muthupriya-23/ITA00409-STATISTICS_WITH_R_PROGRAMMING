v1 <- c(10, 20, 30)
v2 <- c("A", "B", "C")
m <- matrix(1:6, nrow = 2)
add <- function(a, b) {
  a + b
}
mylist <- list(v1, v2, m, add)
mylist
mylist[[4]](10, 20)