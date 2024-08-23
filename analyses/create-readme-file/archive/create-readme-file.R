#################################################################################
# This will run all scripts in the module
#################################################################################

#################################################################################
root_dir <- file.path("/research/dept/dnb/core_operations/Bioinformatics/achroni/GitHub/antoniachroni-github")
OutDir <- file.path(root_dir) 

################################################################################################################
# Run Rmd script
rmarkdown::render('create-readme-file.Rmd', clean = TRUE,
                  output_dir = file.path(OutDir),
                  output_file = c(paste('README', '-', Sys.Date(), sep = '')))
################################################################################################################