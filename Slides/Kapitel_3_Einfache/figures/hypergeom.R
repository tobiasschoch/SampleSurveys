# Augenarzt/innen nach Sprachregion, MedReg 2022
ND <- 1260
NF <- 572
NI <- 70
# Ungeplanter Untersuchungsbereich: Ital. Sprachregion
# Stichprobe im Umfang n = 500 (gesamte Schweiz)
n <- 500
# Verteilung
p <- dhyper(1:NI, NI, ND + NF, n)
# Plot
pdf(file = "hypergeom.pdf", width = 10)
    plot(1:NI, p, type = "h", lwd = 2, xlab = expression(n[Ital]),
         ylab = "Wahrscheinlichkeit", cex.lab = 1.3, cex.axis = 1.2)
dev.off()
system("pdfcrop hypergeom.pdf hypergeom.pdf")
