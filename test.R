### test.R --- 
## Filename: test.R
## Description: Testing reading gis output
## Author: Noah Peart
## Created: Fri Jan 30 14:46:38 2015 (-0500)
## Last-Updated: Fri Feb  6 11:52:25 2015 (-0500)
##           By: Noah Peart
######################################################################

dat <- read.table('plot5attri.txt', header=T, sep=",")
dat <- read.csv('plot5attri.txt', header=T)

library(plotrix)
save <- FALSE

if (save)
    png(filename = "plot5.png")
    
par(mfrow = c(2, 1))
polar.plot(dat$ZENITH_ANG, dat$HORIZ_ANG, main="Horizontal angle, radius is zenith angle")
polar.plot(dat$DIST_3D, dat$HORIZ_ANG, main="Horizontal angle, radius is 3D distance")

if (save)
    dev.off()

## Read all
files <- list.files('./SkylineOutput', full.names = TRUE)
tst <- lapply(files, read.csv)
