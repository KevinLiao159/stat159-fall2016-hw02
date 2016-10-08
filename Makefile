
.PHONY: all data clean

all: report/report.pdf data/eda-output.txt data/regression.RData

data:
	curl -O http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv > data

report/report.pdf: report/report.Rmd data/regression.RData images/scatterplot-tv-sales.png
	pandoc -s report/report.Rmd -o report/report.pdf

data/regression.RData: code/regression-script.R data/Advertising.csv
	Rscript code/regression-script.R

data/eda-output.txt: code/eda-script.R data/Advertising.csv
	Rscript code/eda-script.R


clean:
	rm -f report/report.pdf report/report.Rmd





