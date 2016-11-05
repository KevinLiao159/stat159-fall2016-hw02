# stat159-fall2016-hw2

### SIMPLE REGRESSION ANALYSIS

This repository holds the information of Course Stats 159 at UC Berkeley, fall 2016 - second homework report. This report aims to reproduce the main results displayed in **section 3.1: Simple Linear Regression** of the book **_An Introduction to Statistical Learning_** and perform simple linear regression analysis on the data set `Advertising`.

Course website: [gastonsanchez.com/stat159](http://gastonsanchez.com/stat159)

Project instruction: [github project repository](https://github.com/ucb-stat159/stat159-fall-2016/blob/master/hws/hw02/stat159-hw02-simple-regression.Rmd)

For the purpose of reproducibility, this repository holds four separate folders that could be used for further study:
* data: contains the original `Advertising.csv` dataset downloaded from
* code: contains the code used to reproduce the simple regression analysis
* report: contains the author's own thoughts on 
* images: contains the reproduced images

Table of Contents:
* Abstract
* Data
* Methodology
* Results
* Conclusions

### File Structure

The file-structure for this assignment is the following:

```
stat159-fall2016-hw02/
	.gitignore
	README.md
	Makefile
	data/
	  README.md
	  Advertising.csv
	  eda-output.txt
	  regression.RData
	code/
	  README.md
	  eda-script.R
	  regression-script.R
	images/
		histogram-sales.png
		histogram-sales.pdf
		histogram-tv.png
		histogram-tv.pdf
		scatterplot-tv-sales.png
		scatterplot-tv-sales.pdf
	report/
		report.Rmd
		report.pdf
```

### How to reproduce the project
If you want to reproduce the results represented in this project (images, dataset, report etc), one simply clone the repository (download zip file) and run the make file with command
> make

If you would like to reproduce a specific part of the project (e.g. data), run the corresponding command line in the terminal
> make data

If you would like to remove the report, run the following command line
> make clean

the following is a complete list of make commands for phony targets:
* make all 
* make data 
* make data/eda-output.txt
* make data/regression.RData
* make report/report.pdf
* make clean



### LICENSE

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.


Author: **Kevin Liao**