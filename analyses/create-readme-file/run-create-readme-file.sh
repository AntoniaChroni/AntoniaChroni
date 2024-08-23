#!/bin/bash

set -e
set -o pipefail

# Set up modules
module load R/4.4.0
module load pandoc/3.2

# set up running directory
cd "$(dirname "${BASH_SOURCE[0]}")" 

################################################################################################################
Rscript -e "rmarkdown::render('create-readme-file.Rmd', clean = TRUE,
                  output_file = c(paste('README')))"
################################################################################################################