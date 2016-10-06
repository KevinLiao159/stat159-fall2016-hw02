
.PHONY: all data clean

all: report/report.pdf data/eda-output.txt data/regression.RData

data:
	curl -O http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv > data/regression.RData

report.pdf: report/report.Rmd data/regression.RData images/scatterplot-tv-sales.png
	# Not finish 

regression.RData: code/regression-script.R data/Advertising.csv
	# Not finish

eda-output.txt: code/eda-script.R data/Advertising.csv
	# Not finish


clean:
	rm -f report/report.pdf report/report.Rmd





