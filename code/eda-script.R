
# Read Advertising data into R
Advertising <- read.csv(file = "../data/Advertising.csv", header = TRUE)

# Output summary and histogram to eda-output.txt
sink(file = "../data/eda-output.txt")
print("Summary of Statistics of TV") 
summary(Advertising$TV)
sink()

# Output summary and histogram to eda-output
sink(file = "../data/eda-output.txt", append = TRUE)
print("Summary of Statistics of Sales") 
summary(Advertising$Sales)
sink()

# Save histogram of TV in both PNG and PDF formats
hist(Advertising$TV)
dev.copy(png, '../images/histogram-tv.png')
dev.off()
dev.copy(pdf, '../images/histogram-tv.pdf')
dev.off()

# Save histogram of Sales in both PNG and PDF formats
hist(Advertising$Sales)
dev.copy(png, '../images/histogram-sales.png')
dev.off()
dev.copy(pdf, '../images/histogram-sales.pdf')
dev.off()




