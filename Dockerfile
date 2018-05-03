FROM rocker/r-devel

RUN Rscript -e 'install.packages(c(\
    "aws.s3"\
), repos = "http://cran.rstudio.com")'
