# Maispopulation (Cochran, 1977, S. 111)
lbs <- c("0 - 40", "41 - 80", "81 - 120", "121 - 160", "161 - 200",
         "201 - 240", "241 - max.")
N <- c(394, 461, 391, 334, 169, 113, 148)
mu <- c(5.4, 16.3, 24.3, 34.5, 42.1, 50.1, 63.8)
std_dev <- c(8.3, 13.3, 15.1, 19.8, 24.5, 26.0, 35.2)
mu_pop <- 26.3
at <- seq_along(lbs)
pdf(height = 5, width = 8, file = "maisanbau.pdf")
    plot(at, mu, type = "p", axes = FALSE, pch = 19, ylim = c(0, 100),
         col = rgb(0, 51, 121, maxColorValue = 255), cex.axis = 1,
         cex.lab = 1.1, xlab = "Anbaufläche (gruppiert)",
         ylab = "mittlere Maisanbaufläche")
    axis(1, at, labels = lbs)
    axis(2)
    arrows(at, pmax(0, mu - std_dev), at, mu + std_dev, angle = 90, code = 3,
           length = 0.1, lwd = 2, col = rgb(0, 51, 121, maxColorValue = 255))
    box()
    abline(h = 26.3, lty = 2, lwd = 2, col = rgb(145, 6, 105, maxColorValue =
                                                 255))
dev.off()
# crop figure
system("pdfcrop maisanbau.pdf maisanbau.pdf")
