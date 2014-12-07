import os
import osgeo._gdal
import osgeo._gdalconst
import osgeo._ogr
import osgeo._osr
import osgeo
import gdal
import gdalconst
import ogr
import osr

cnt = ogr.GetDriverCount()
for i in xrange(cnt):
    print(ogr.GetDriver(i).GetName())

import os1_hw

utm=osr.SpatialReference()
try:
    utm.SetFromUserInput('EPSG:26910')
except:
    print("SetFromUserInput failed - but sometimes that happens even when the build is good")

print("GDAL_DATA=",os.environ['GDAL_DATA'])
