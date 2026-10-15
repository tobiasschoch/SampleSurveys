# population size
N <- 8

# variable of interest: y
y <- c(1, 2, 3, 3, 7, 8, 8, 8)

# sample size
n <- 4

# number of possible samples
number_of_samples <- choose(N, n)

# estimate of population y-total
t_hat <- colMeans(combn(y, n)) * N

# sampling distribution of t_hat
distr <- table(t_hat) / number_of_samples

# figure
pdf(file = "sampling_distr.pdf", height = 5)
    t <- as.numeric(names(distr))
    p <- as.numeric(distr)
    plot(t, p, type = "h", lwd = 2, xlab = expression(hat(t)),
        ylab = "Wahrscheinlichkeit", col = rgb(0, 51, 121,
        maxColorValue = 255))
    points(t, p, pch = 19, cex = 0.8, col = rgb(0, 51, 121,
        maxColorValue = 255))
dev.off()

# crop figure
system("pdfcrop sampling_distr.pdf sampling_distr.pdf")
