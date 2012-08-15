/* -- Natural Earth -- */


/* Zoom Level 6 */
#ne-roads-inline[zoom=6][ScaleRank>=3][ScaleRank<=6] {
	line-width: 0.1;
	line-color: @highway;
}

/* Zoom Level 7 */
#ne-roads-inline[zoom=7][ScaleRank>=3][ScaleRank<=5] {
	line-width: 1.5;
	line-color: @highway;
}
#ne-roads-inline[zoom=7][ScaleRank=6],
#ne-roads-inline[zoom=7][ScaleRank=7][type_2="Expressway"],
#ne-roads-inline[zoom=7][ScaleRank=7][roadType="Major Highway"],
#ne-roads-inline[zoom=7][ScaleRank=7][roadType="Secondary Highway"] {
	line-width: 0.1;
	line-color: @highway;
}
#ne-roads-casing[zoom=7][ScaleRank<=7] {
	line-width: 2.25;
	line-color: @highway_case;
	line-opacity: 0.5;
}

/* Zoom Level 8 */
#ne-roads-inline[zoom=8][roadType="Beltway"],
#ne-roads-inline[zoom=8][ScaleRank<=8][type_2="Expressway"] {
	line-width: 1.5;
}
#ne-roads-inline[zoom=8][ScaleRank<=8] {
	line-width: 0.1;
	line-color: @highway;
}
#ne-roads-casing[zoom=8][ScaleRank<=8] {
	line-width: 3.25;
	line-color: @highway_case;
	line-opacity: 0.5;
}



/* -- OSM -- */


/* Zoom Level 9 */
#z10-roads[zoom=9][kind='major_road'] {
	line-width: 0.15;
	line-color: @major;
}
#z10-roads::outline[zoom=9][kind='highway'] {
	line-width: 4.25;
	line-color: @highway_case;
}
#z10-roads::inline[zoom=9][kind='highway'] {
	line-width: 1.5;
	line-color: @highway;
}

/* Zoom Level 10 */
#z10-roads[zoom=10][kind='major_road'] {
	line-width: 0.5;
	line-color: @major;
}
#z10-roads[zoom=10][kind='minor_road'] {
	line-width: 0.2;
	line-color: @minor;
}
#z10-roads::outline[zoom=10][kind='highway'] {
	line-width: 6;
	line-color: @highway_case;
}
#z10-roads::inline[zoom=10][kind='highway'] {
	line-width: 2;
	line-color: @highway;
}

/* Zoom Level 11 */
#z11-roads[zoom=11][kind='minor_road'] {
	line-width: 0.2;
	line-color: @minor;
}
#z11-roads::outline[zoom=11][kind='major_road'] { 
	line-width: 1.25;
	line-color: @major_case;
}
#z11-roads::inline[zoom=11][kind='major_road'] {
	line-width: 0.7;
	line-color: @major;
}
#z11-roads::outline2[zoom=11][kind='highway'] {
	line-width: 6;
	line-color: @highway_case;
}
#z11-roads::inline2[zoom=11][kind='highway'] {
	line-width: 2.5;
	line-color: @highway;
}

/* Zoom Level 12 */
#z12-roads[zoom=12][kind='minor_road'] {
	line-width: 0.2;
	line-color: @minor;
}
#z12-roads[zoom=12][is_link='yes'] {
	line-width: 0.5;
	line-color: @highway;
}
#z12-roads::outline[zoom=12][kind='major_road'] {
	line-width: 5;
	line-color: @major_case;
}
#z12-roads::inline[zoom=12][kind='major_road'] {
	line-width: 1;
	line-color: @major;
}
#z12-roads::outline2[zoom=12][kind='highway'][is_link='no'] {
	line-width: 8;
	line-color: @highway_case;
}
#z12-roads::inline2[zoom=12][kind='highway'][is_link='no'] {
	line-width: 3;
	line-color: @highway;
}

/* Zoom Level 13 */
#z13-roads[zoom=13][kind='minor_road'] {
	line-width: 0.4;
	line-color: @minor;
}
#z13-roads::outline[zoom=13][kind='major_road'][is_link='no'] {
	line-width: 5;
	line-color: @major_case;
}
#z13-roads::inline[zoom=13][kind='major_road'] {  
	line-width: 1.5;
	line-color: @major;
}
#z13-roads::outline2[zoom=13][kind='highway'][is_link='yes'][is_bridge='yes'] {
	line-width: 3;
	line-color: @highway_case;
}
#z13-roads::inline2[zoom=13][kind='highway'][is_link='yes'] {
	line-width: 1;
	line-color: @highway;
}
#z13-roads::outline3[zoom=13][kind='highway'][is_link='yes'] {
	line-width: 3;
	line-color: @highway_case;
}
#z13-roads::inline3[zoom=13][kind='highway'][is_link='yes'] {
	line-width: 1;
	line-color: @highway;
}
#z13-roads::outline4[zoom=13][kind='highway'][is_link='no'] {
	line-width: 8;
	line-color: @highway_case;
}
#z13-roads::inline4[zoom=13][kind='highway'][is_link='no'] {
	line-width: 3;
	line-color: @highway;
}

/* Zoom Level 14 */
#z14-roads::outline[zoom=14][kind='major_road'] {
	line-width: 6;
	line-color: @major_case;
}
#z14-roads[zoom=14][kind='minor_road'] {
	line-width: 0.8;
	line-color: @minor;
}
#z14-roads[zoom=14][kind='major_road'] {
	line-width: 1.9;
	line-color: @major;
}
#z14-roads[zoom=14][kind='rail'] {
	line-width: 1;
	line-color: @rail;
}
#z14-roads::outline2[zoom=14][kind='rail'] {
	line-width: 3;
	line-dasharray: 1,3;
	line-cap: butt;
	line-color: @rail;
}
#z14-roads::outline2[zoom=14][kind='highway'] {
	line-width: 8;
	line-color: @highway_case;
}
#z14-roads::inline[zoom=14][kind='highway'] {
	line-color: @highway;
	[is_link='no']{ line-width: 4;}
	[is_link='yes']{ line-width: 2.5;}
}
#z14-roads::inline[zoom=14][kind='highway'][is_link='yes'][is_bridge='yes'] {
	outline/line-width: 5.5;
	outline/line-color: @highway_case;
	outline/line-cap: butt;
	line-width: 2.5;
	line-color: @highway;
}

/* Zoom Levels 15+ */
#roads_high::outline[zoom>=15],
#tunnels[render='1_outline'][zoom>=15],
#bridges[render='1_outline'][zoom>=15] {
	line-join: round;
	line-cap: butt;

	[is_bridge='yes'],
	[is_tunnel='yes'] {
		line-cap: butt;
	}
	[kind='path'] {
		line-color: @path_case;
	}
	[kind='highway'] { line-color: @highway_case; }
	[kind='major_road']  { line-color: @major_case; }
	[kind='minor_road'] { line-color: @minor_case; }
	[highway='service'] { line-color: @service_case; }

	[is_tunnel='yes'] {
		line-color: #ccc;
	}
	[kind='rail'] {
		line-color: @rail;
	}

	[zoom=15] {
		[kind='path'] { line-width: 3.5; }
		[kind='highway'][is_link='no'] { line-width: 11; }
		[kind='highway'][is_link='yes'] { line-width: 6.5; }
		[kind='major_road'] { line-width: 8; }
		[kind='major_road'][is_link='yes'] { line-width: 5.5; }
		[kind='minor_road'] { line-width: 0; }
		[highway='service'] { line-width: 3.5; }
		[kind='rail'] { line-width: 3; line-dasharray: 0.5,3.5; line-cap: butt;}
		[is_tunnel='yes'] { line-width: 5; line-opacity: 0.7; }
	}
	[zoom=16] {
		[kind='path'] { line-width: 4.5; }
		[kind='highway'][is_link='no'] { line-width: 14; }
		[kind='highway'][is_link='yes'] { line-width: 7; }
		[kind='major_road'] { line-width: 11; }
		[kind='major_road'][is_link='yes'] { line-width: 7; }
		[kind='minor_road'] { line-width: 6.5; }
		[highway='service'] { line-width: 4; }
		[kind='rail'] { line-width: 5; line-dasharray: 0.5,4.5; line-cap: butt;}
		[is_tunnel='yes'] { line-width: 5; line-opacity: 0.7; }
	}
	[zoom>=17] {
		[kind='highway'][is_link='no'] { line-width: 24; }
		[kind='highway'][is_link='yes'] { line-width: 9; }
		[kind='major_road'] { line-width: 18; }
		[kind='major_road'][is_link='yes'] { line-width: 8; }
		[kind='minor_road'] { line-width: 9; }
		[highway='service'] { line-width: 6; }
		[kind='path'] { line-width: 5; }
		[kind='rail'] { line-width: 5; line-dasharray: 0.5,4.5; line-cap: butt;}
		[is_tunnel='yes'] { line-width: 18; line-opacity: 0.7; }
	}
	[zoom>=18] {
		[kind='highway'] { line-color: @highway; }
		[kind='major_road']  { line-color: @major; }
		[kind='minor_road'] { line-color: @minor_2; }
		[highway='service'] { line-color: @service; }

		[kind='highway'][is_link='no'] { line-width: 42; }
		[kind='highway'][is_link='yes'] { line-width: 14; }
		[kind='major_road'] { line-width: 22; }
		[kind='major_road'][is_link='yes'] { line-width: 13; }
		[kind='minor_road'] { line-width: 17; }
		[highway='service'] { line-width: 6; }
		[kind='path'] { line-width: 5; }
		[kind='rail'] { line-width: 7; line-dasharray: 2,6; line-cap: butt;}
		[is_tunnel='yes'] { line-width: 22; line-opacity: 0.4; line-color: #ccc;}
	}
}

#roads_high::inline[zoom>=15],
#tunnels[render='3_inline'][zoom>=15],
#bridges[render='3_inline'][zoom>=15] {
	line-join: round;
	line-cap: round;

	[is_tunnel='yes'] {
		line-color: #000;
	}
	[kind='highway'] { line-color: @highway; }
	[kind='major_road']  { line-color: @major; }
	[kind='minor_road'] { line-color: @minor_2; }
	[highway='service'] { line-color: @service; }

	[kind='rail'] {
		line-color: @rail;
	}
	[kind='path'] {
		line-color: @path;
		line-cap: butt;
	}
	[is_bridge='yes'] {
		line-join: round;
	}

	[zoom=15] {
		[kind='highway'][is_link='no'] { line-width: 6; }
		[kind='highway'][is_link='yes'] { line-width: 2.25; }
		[kind='major_road'] { line-width: 5; }
		[kind='major_road'][is_link='yes'] { line-width: 2.25; }
		[kind='minor_road'] { line-width: 1.2; }
		[highway='service'] { line-width: 1.2; }
		[kind='rail'] { line-width: 0.5; }
		[is_tunnel='yes'] { line-width: 3; line-opacity: 0.1; }
		[kind='path'] { line-width: 1.2; line-color: #fff; line-cap: butt; }
	}
	[zoom=16] {
		[kind='highway'][is_link='no'] { line-width: 8.5; }
		[kind='highway'][is_link='yes'] { line-width: 2.5; }
		[kind='major_road'] { line-width: 6.5; }
		[kind='major_road'][is_link='yes'] { line-width: 2; }
		[kind='minor_road'] { line-width: 3.5; }
		[highway='service'] { line-width: 1.5; }
		[kind='rail'] { line-width: 0.5; }
		[is_tunnel='yes'] { line-width: 3; line-opacity: 0.1; line-color: #999; }
		[kind='path'] { line-width: 1.5; line-color: #fff; line-cap: butt; }
	}
	[zoom=17] {
		[kind='highway'][is_link='no'] { line-width: 14.75; }
		[kind='highway'][is_link='yes'] { line-width: 4.75; }
		[kind='major_road'] { line-width: 11.5; }
		[kind='major_road'][is_link='yes'] { line-width: 4; }
		[kind='minor_road'] { line-width: 6.5; }
		[highway='service'] { line-width: 4; }
		[kind='path'] { line-width: 3; }
		[kind='rail'] { line-width: 1; }
		[is_tunnel='yes'] { line-width: 12; line-opacity: 0.1; line-color: #ccc; }
	}
	[zoom>=18] {
		[kind='highway'] { line-color: @highway_case; }
		[kind='major_road']  { line-color: @major_case; }
		[kind='minor_road'] { line-color: @minor_case; }
		[highway='service'] { line-color: @service_case; }

		[kind='highway'][is_link='no'] { line-width: 28; }
		[kind='highway'][is_link='yes'] { line-width: 10; }
		[kind='major_road'] { line-width: 18; }
		[kind='major_road'][is_link='yes'] { line-width: 9; }
		[kind='minor_road'] { line-width: 13; }
		[highway='service'] { line-width: 4; }
		[kind='path'] { line-width: 2; line-cap: butt; }
		[kind='rail'] { line-width: 2; }
		[is_tunnel='yes'] { line-width: 18; line-opacity: 0.7; line-color: #ccc;}
	}
}

/* aeroways */
#aeroways[zoom>11] {
	line-color: @aeroway;
	line-cap: square;
	line-join: miter;
}

#aeroways[zoom>=15] {
	line-color: @aeroway;
}

#aeroways[aeroway='runway'][zoom=12] { line-width: 2; }
#aeroways[aeroway='runway'][zoom=13] { line-width: 4; }
#aeroways[aeroway='runway'][zoom=14] { line-width: 8; }
#aeroways[aeroway='runway'][zoom=15] { line-width: 16; }
#aeroways[aeroway='runway'][zoom=16] { line-width: 32; }
#aeroways[aeroway='runway'][zoom=17] { line-width: 64; }
#aeroways[aeroway='runway'][zoom>=18] { line-width: 128; }

#aeroways[aeroway='taxiway'][zoom=13] { line-width: 1; }
#aeroways[aeroway='taxiway'][zoom=14] { line-width: 2; }
#aeroways[aeroway='taxiway'][zoom=15] { line-width: 4; }
#aeroways[aeroway='taxiway'][zoom=16] { line-width: 8; }
#aeroways[aeroway='taxiway'][zoom=17] { line-width: 16; }
#aeroways[aeroway='taxiway'][zoom>=18] { line-width: 32; }