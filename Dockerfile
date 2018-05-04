FROM rocker/r-base

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    libssl-dev \
    python-pip \
    python-dev \
    build-essential \
    libcurl4-openssl-dev \
    libpq-dev \
    libsasl2-dev \
    libxml2-dev \
    mutt \
    postfix \
    r-base \
    zsh \
    emacs

RUN pip install --upgrade \
    boto3 \
    joblib \
    keras \
    matplotlib \
    numpy \
    pandas \
    psycopg2 \
    pytz \
    sklearn \
    sqlalchemy

# speed up R packages installation. WARNING!! Some packages installation fail with this config
# RUN sed -i -e 's/MAKE=.*/MAKE="make -j 8"/g' /usr/lib/R/etc/Renviron

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
