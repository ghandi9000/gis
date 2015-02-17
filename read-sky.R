### read-sky.R --- 
## Filename: read-sky.R
## Description: Read the gis data
## Author: Noah Peart
## Created: Mon Feb 16 19:06:05 2015 (-0500)
## Last-Updated: Mon Feb 16 19:06:46 2015 (-0500)
##           By: Noah Peart
######################################################################

## Read all
files <- list.files('~/work/gis/skylines', full.names = TRUE)
skylines <- lapply(files, read.csv)
names(skylines) <- lapply(files, function(x) gsub(pattern = "[^0-9]*", "", x))
rm(files)

