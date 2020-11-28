FROM rocker/tidyverse
MAINTAINER "Will Landau" will.landau@gmail.com
RUN apt-get update
RUN apt-get install -y emacs libzmq3-dev gcc-7 g++-7 gfortran-7
RUN Rscript -e 'install.packages(c("clustermq", "remotes"))'
RUN Rscript -e 'remotes::install_github("wlandau/targets")'
RUN Rscript -e 'remotes::install_github("wlandau/tarchetypes")'
