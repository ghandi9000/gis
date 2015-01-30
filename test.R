### test.R --- 
## Filename: test.R
## Description: Testing reading gis output
## Author: Noah Peart
## Created: Fri Jan 30 14:46:38 2015 (-0500)
## Last-Updated: Fri Jan 30 15:06:19 2015 (-0500)
##           By: Noah Peart
######################################################################

dat <- read.table('plot5attri.txt', header=T, sep=",")
dat <- read.csv('plot5attri.txt', header=T)

library(plotrix)

png(filename = "plot5.png")
par(mfrow = c(2, 1))
polar.plot(dat$ZENITH_ANG, dat$HORIZ_ANG, main="Horizontal angle, radius is zenith angle")
polar.plot(dat$DIST_3D, dat$HORIZ_ANG, main="Horizontal angle, radius is 3D distance")
dev.off()
