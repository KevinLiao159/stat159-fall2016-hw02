
.PHONY: all data clean

all: report/report.pdf data/eda-output.txt data/regression.RData

data:
	curl -O http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv > data

report/report.pdf: report/report.Rmd data/regression.RData images/scatterplot-tv-sales.png
	cd report && Rscript -e “library(rmarkdown); render(‘report.Rmd’)”
	#cd report && pandoc report.Rmd -o report.pdf
	#pandoc -s report/report.Rmd -o report/report.pdf

data/regression.RData: code/regression-script.R data/Advertising.csv
	cd code && Rscript regression-script.R
	

data/eda-output.txt: code/eda-script.R data/Advertising.csv
	cd code && Rscript eda-script.R
	


clean:
	rm -f report/report.pdf report/report.Rmd


# use xtable in Rscript file R chunk to display regression table





