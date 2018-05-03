FROM ubuntu:trusty

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    libcurl4-openssl-dev \
    libpq-dev \
    libsasl2-dev \
    libxml2-dev \
    mutt \
    postfix \
    r-base \
    zsh \
    emacs

# speed up r packages installation
RUN sed -i -e 's/MAKE=.*/MAKE="make -j 8"/g' hello.txt

RUN Rscript -e 'install.packages(c(\
    "aws.s3"\
), repos = "http://cran.rstudio.com")'
