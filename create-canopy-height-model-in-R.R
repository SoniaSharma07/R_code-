

# Load needed packages
library(raster)
library(rgdal)

#import raster data for Digital surface model
dsm <- raster(paste0("SJER2013_DSM.tif"))

# view info about the raster.
dsm

# plot the DSM
plot(dsm, main="Lidar Digital Surface Model \n SJER, California")


# import the digital terrain model
dtm <- raster(paste0("SJER2013_DTM.tif"))

plot(dtm, main="Lidar Digital Terrain Model \n SJER, California")


# use raster math to create CHM
chm <- dsm - dtm

# view CHM attributes
chm

plot(chm, main="Lidar Canopy Height Model \n SJER, California")

# conversion 1m = 3.28084 ft
chm_ft <- chm*3.28084

# plot 
plot(chm_ft, main="Lidar Canopy Height Model \n in feet")

# write out the CHM in tiff format. 
writeRaster(chm,paste0("chm_SJER.tif"),"GTiff")


