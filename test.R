### test.R --- 
## Filename: test.R
## Description: Testing reading gis output
## Author: Noah Peart
## Created: Fri Jan 30 14:46:38 2015 (-0500)
## Last-Updated: Mon Feb 16 19:06:55 2015 (-0500)
##           By: Noah Peart
######################################################################

library(plotrix)
## save <- FALSE
## if (save)
##     png(filename = "plot5.png")
    
## par(mfrow = c(2, 1))
## polar.plot(dat$ZENITH_ANG, dat$HORIZ_ANG, main="Horizontal angle, radius is zenith angle")
## polar.plot(dat$DIST_3D, dat$HORIZ_ANG, main="Horizontal angle, radius is 3D distance")

## if (save)
##     dev.off()

## Read all
files <- list.files('~/work/gis/skylines', full.names = TRUE)
skylines <- lapply(files, read.csv)
names(skylines) <- lapply(files, function(x) gsub(pattern = "[^0-9]*", "", x))
