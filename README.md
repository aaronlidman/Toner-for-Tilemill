Toner for Tilemill
==================

##### NOTE: This repo is for an obsolete version of Toner. For the up-to-date repo, please go to: http://github.com/stamen/toner-carto

![Toner for Tilemill screenshot](https://raw.github.com/aaronlidman/Toner-for-Tilemill/master/preview.png)

Toner for Tilemill is a port of [Stamen's](http://stamen.com/) high contrast, black-and-white mapping style, [Toner](https://github.com/Citytracking/toner), for use with [Tilemill](http://mapbox.com/tilemill). The style is ment to reflect the current state of Toner's appearance in the easy to use Tilemill environment. [Check out a map of the output.](http://jsfiddle.net/E5khK/7/embedded/result/)

It's still a work in progress with some known problems, feel free to file an [issue](http://github.com/aaronlidman/Toner-for-Tilemill/issues/) if you notice something wrong or isn't in sync with the apperance of original Toner.

Features
---

In some places the [Carto](http://github.com/mapbox/carto) markup is structured differently than the original Cascadenik mostly to take advantage of features in Carto, so there is plenty of nesting, some instances, and a few attachments. For features like highways, bodies of water, and land, colors have been made into variables for easy modifications. Stylesheets have also been organized with similarly grouped features; all roads are in one place, as are labels, boundaries, and land features.

![Toner for Tilemill features](https://raw.github.com/aaronlidman/Toner-for-Tilemill/master/features.png)


Setup Instructions
---

This setup is taken directly from Mapbox's [OSM Bright](http://github.com/mapbox/osm-bright) so most of the instructions for OSM Bright will work here with the only difference being that there is only support for osm2pgsql, not Imposm.

I highly recommend the Mapbox quickstart guides for [OS X](http://mapbox.com/tilemill/docs/guides/osm-bright-mac-quickstart/) and [Ubuntu](http://mapbox.com/tilemill/docs/guides/osm-bright-ubuntu-quickstart/), they've always worked for me.

### 1. Set up PostgreSQL & PostGIS ###

If you don't already, you need to have [PostgreSQL][] installed & running with
a [PostGIS][] database setup within it. See the [PostGIS documentation][1] for
full information on how to do this.

Take note of the user and database you setup during this process.

[PostgreSQL]: http://postgresql.org/
[PostGIS]: http://postgis.refractions.net/
[1]: http://postgis.refractions.net/documentation/manual-1.5/

### 2. Import OpenStreetMap data ###

You will need an OSM database extract in one of the following formats:

- .osm.pbf (binary; smallest & fastest)
- .osm.bz2 (compressed xml)
- .osm (xml)

You can find appropriate data extracts for a variety of regions at
<http://download.geofabrik.de/osm> or <http://downloads.cloudmade.com>. Exracts
of select metropolitan areas are available at <http://metro.teczno.com>. See
[the OSM wiki][2] for information about (very large) full-planet downloads.

You need to process this data and import it to your PostGIS database. You can
do this with [osm2pgsql][]; see the site for installation instructions.

#### Using osm2pgsql

The osm2pgsql import command looks like this:

    osm2pgsql -c -G -U <postgres_user> -d <postgis_database> <data.osm.pbf>

See `man osm2pgsql` or the [online documentation][5] for more details.

[2]: http://wiki.openstreetmap.org/wiki/Planet
[osm2pgsql]: http://wiki.openstreetmap.org/wiki/Osm2pgsql
[5]: http://wiki.openstreetmap.org/wiki/Osm2pgsql

### 3. Edit the configuration ###

You'll need to adjust some settings for things like your PostgreSQL connection
information.

1. Make a copy of `configure.py.sample` and name it `configure.py`.
2. Open `configure.py` in a text editor.
3. Optionally change the name of your project from the default, 'Toner for Tilemill'.
4. Adjust the path to point to your MapBox project folder. (reference: http://mapbox.com/tilemill/docs/manual/files-directories/)
5. Make any adjustments to the PostgreSQL connection settings. Your database
   may be set up so that you require a password or different user name.
6. Optionally adjust the query extents or shapefile locations. (Refer to the 
   comments in the configuration file for more information.)
7. Save & close the file.

### 4. Run make.py ###

This will create a new folder called "build" with your new project, customized
with the variables you set in `configure.py` and install a copy of this build
to your MapBox project folder. If you open up TileMill you should see your new
map in the project listing.

Do note, opening the project for the first time may take a while because the coastline shapefile has to be downloaded and cached, Tilemill might look like it froze but it's fine, just let it be. The file is ~300mb and only has to be downloaded once.

You're now ready to start editing the template in TileMill!
