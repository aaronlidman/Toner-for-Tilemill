#!/usr/bin/env python

from os import path
from collections import defaultdict
config = defaultdict(defaultdict)

# The name given to the style. This is the name it will have in the TileMill
# project list, and a sanitized version will be used as the directory name
# in which the project is stored
config["name"] = "Toner for Tilemill"

# The absolute path to your MapBox projects directory. You should 
# not need to change this unless you have configured TileMill specially
config["path"] = path.expanduser("~/Documents/MapBox/project")

# PostGIS connection setup
# Leave empty for Mapnik defaults. The only required parameter is dbname.
config["postgis"]["host"]     = ""
config["postgis"]["port"]     = ""
config["postgis"]["dbname"]   = "osm"
config["postgis"]["user"]     = ""
config["postgis"]["password"] = ""

# Increase performance if you are only rendering a particular area by
# specifying a bounding box to restrict queries. Format is "XMIN,YMIN,XMAX,YMAX"
# in the same units as the database (probably spherical mercator meters). The
# whole world is "-20037508.34 -20037508.34 20037508.34 20037508.34".
# Leave blank to let Mapnik estimate.
config["postgis"]["extent"] = "-20037508.34 -20037508.34 20037508.34 20037508.34"

# Coastline shapefile, for #land.
# another source: http://data.openstreetmapdata.com/coastlines-split-3857.zip
# or reproject the original (though there are often errors) http://tile.openstreetmap.org/processed_p.tar.bz2
config["processed_p"] = "http://tilemill-data.s3.amazonaws.com/osm/coastline-good.zip"