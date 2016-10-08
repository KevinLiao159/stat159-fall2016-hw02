
# Read Advertising data into R
Advertising <- read.csv(file = "data/Advertising.csv", header = TRUE)

# Run Simple Linear Regression of Sales and TV
lm <- lm(Sales ~ TV, data = Advertising)

# Output summary of the regression to regression.RData
regression <- summary(lm)
save(regression, file = 'data/regression.RData')

# Save scatter plot of regression in both PNG and PDF
plot(x = Advertising$TV, y = Advertising$Sales, main = "Regression Analysis of Sales and TV",
     xlab = "TV", ylab = "Sales", col = "red", cex = 0.5)
abline(lm, col = "blue")
dev.copy(png, 'images/scatterplot-tv-sales.png')
dev.off()
dev.copy(pdf, 'images/scatterplot-tv-sales.pdf')
dev.off()
