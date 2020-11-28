FROM rocker/tidyverse
MAINTAINER "Will Landau" will.landau@gmail.com
RUN apt-get update
RUN apt-get install -y build-essential emacs libzmq3-dev libglpk40
RUN Rscript -e 'install.packages(c("clustermq", "remotes"))'
RUN Rscript -e 'remotes::install_github("wlandau/targets")'
RUN Rscript -e 'remotes::install_github("wlandau/tarchetypes")'
