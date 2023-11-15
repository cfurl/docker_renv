FROM rocker/r-ver:4
RUN R -e "install.packages('renv', repos = c(CRAN = 'https://cloud.r-project.org'))"
WORKDIR /home/docker_renv
COPY renv.lock renv.lock
ENV RENV_PATHS_LIBRARY renv/library
RUN R -e "renv::restore()"
COPY r_func_writes_data.R r_func_writes_data.R
CMD Rscript r_func_writes_data.R