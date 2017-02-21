## ---- echo=F-------------------------------------------------------------
knitr::opts_chunk$set(cache=FALSE, fig.height=3, fig.width = 7, comment=NULL, eval=T, tidy=F, width=80)

## ----environment, warning=F, message=F-----------------------------------
library(RandomActsofPizza)
library(rjson)      # read in the dataset
library(plyr)
library(dplyr)      # data manipulation
library(ggplot2)    # plotting
library(httr)
library(tm)

