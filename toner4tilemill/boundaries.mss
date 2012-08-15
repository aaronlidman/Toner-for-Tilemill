#ne_10m_admin_0_boundary_lines_land[zoom=7],
#ne_10m_admin_0_boundary_lines_land[zoom=8],
#ne_10m_admin_0_boundary_lines_land[zoom=9] {
	::outline {
		line-color: @land;
		line-width: 3;
	}
	line-color: #000;
	line-width: 1.2;
	line-dasharray: 3,7;
	line-cap: round;
}

#admin1-lines-50m[zoom>=3][zoom<6] {
	line-width: 0.2;
	line-color: #000;
}

#admin1-lines-10m[zoom=6] {
	line-width: 0.6;
	line-color: #000;
}

#admin1-lines-10m[zoom=7] {
	line-width: 1.5;
	line-color: #686868;
	line-dasharray: 1,5;
	line-cap: round;
}

#admin1-lines-10m[zoom=8] {
	line-width: 2;
	line-color: #4d4d4d;
	line-dasharray: 1,5;
	line-cap: round;
}

#admin1-lines-10m[zoom=9],
#admin1-lines-osm[zoom>9] {
	line-width: 2.0;
	line-color: #4d4d4d;
	line-dasharray: 1,5;
	line-cap: round;
}