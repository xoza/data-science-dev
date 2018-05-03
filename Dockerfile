FROM rocker/r-devel



RUN Rscript -e 'install.packages(c(\
    "aws.s3",\
    "caret",\
    "config",\
    "data.table",\
    "dbplyr",\
    "doParallel",\
    "dplyr",\
    "DT",\
    "e1071",\
    "elasticnet",\
    "forecast",\
    "ggplot2",\
    "jsonlite",\
    "kernlab",\
    "lubridate",\
    "mongolite",\
    "party",\
    "purrr",\
    "randomForest",\
    "RColorBrewer",\
    "readr",\
    "reshape2",\
    "rpart",\
    "RPostgreSQL",\
    "scales",\
    "shiny",\
    "shinythemes",\
    "sqldf",\
    "stringr",\
    "tidyr",\
    "tidyverse",\
    "xgboost"\
), repos = "http://cran.rstudio.com")'
