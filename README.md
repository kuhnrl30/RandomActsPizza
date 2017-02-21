# Random Acts of Pizza 

[![Build Status](https://travis-ci.org/kuhnrl30/RandomActsofPizza.svg?branch=master)](https://travis-ci.org/kuhnrl30/RandomActsofPizza)

There was a thread on Reddit where people could ask other people to buy them pizza for free. In their request, the often gave a reason why they deserved the pizza- lost a job, tough week, just for fun.  Not everyone got a free pizza.  The dataset was posted on Kaggle along with a competition to determine the characteristics of a successful request.  The objective of this competition was to develop a model and understand what features will lead to a successful request.  I've wrapped this analysis into a package and used vignettes to document my workflow.  You can find instructions for downloading the R package below.  You can also view the project site at [http://ryankuhn.net/RandomActsofPizza/](http://ryankuhn.net/RandomActsofPizza/).


- [Model Building]("./ModelBuilding.html")  
- [Exploratory Analysis]("./ExploratoryAnalysis.html")

```
devtools::install_github("kuhnrl30/RandomActsofPizza")
library(RandomActsofPizza)
vignette("ExploratoryAnalysis")
vignette("ModelBuiling")
```





