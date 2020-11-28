FROM rocker/tidyverse
MAINTAINER "Will Landau" will.landau@gmail.com
RUN apt-get update
RUN apt-get install -y emacs libzmq3-dev
RUN install.r clustermq remotes
RUN Rscript -e 'remotes::install_github("wlandau/targets")'
RUN Rscript -e 'remotes::install_github("wlandau/tarchetypes")'
