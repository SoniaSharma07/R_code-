# R_code-
This is the code to create a Canopy Height Model from raster dataset of neon
The National Ecological Observatory Network (NEON) provides lidar-derived data products for each of its sites. These products come in the .tiff format

In this section, we are using these raster datasets to create a Canopy Height Model. The Canopy Height Model (CHM), represents the heights of the trees on the ground. We can derive the CHM by subtracting the ground elevation (DSM) from the elevation of the top of the surface (DTM).

We will use the raster R package to work with the the lidar-derived digital surface model (DSM) and the digital terrain model (DTM).
