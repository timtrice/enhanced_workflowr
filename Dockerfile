FROM rocker/rstudio:3.6.0

ARG REPO_URL="https://github.com/timtrice/enhanced_workflowr.git"
ARG DIR="enhanced_workflowr"

ENV ENV_REPO_URL=$REPO_URL
ENV ENV_DIR=$DIR

RUN apt-get update \
  && apt-get -y install --no-install-recommends \
    libxml2-dev \
    zlib1g-dev \
    vim \
  && rm -rf /var/lib/apt/lists/*

RUN cd /home/rstudio \
  && git clone -v $ENV_REPO_URL \
  && cd $ENV_DIR \
  && Rscript -e 'install.packages(c("remotes"));' \
  && Rscript -e 'if (!all(c("remotes") %in% installed.packages())) { q(status = 1, save = "no")};' \
  && Rscript -e 'deps <- remotes::dev_package_deps(dependencies = NA);remotes::install_deps(dependencies = TRUE);if (!all(deps$package %in% installed.packages())) { message("missing: ", paste(setdiff(deps$package, installed.packages()), collapse=", ")); q(status = 1, save = "no")}'
