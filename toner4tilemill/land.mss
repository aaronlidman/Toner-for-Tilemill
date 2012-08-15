Map { /* the ocean */
	background-color: @water;
}

#country-shapes-110m[zoom>=2][zoom<3] {
	line-width: 1;
	polygon-fill: @land;
}
#land-shapes-110m[zoom<2],
#country-shapes-50m[zoom>=3][zoom<6],
#country-shapes-10m[zoom>=6][zoom<8] {
	line-width: 2;
	polygon-fill: @land;
}
#land[zoom>=8] {
	polygon-fill: @land;
}
#land[zoom=8] {
	line-width: 0.5;
	line-color: @land;
}

/* bodies of water */
#lakes-110m[zoom<3],
#lakes-50m[zoom=3][ScaleRank<3],
#lakes-50m[zoom=4][ScaleRank<4],
#lakes-50m[zoom=5][ScaleRank<5],
#lakes-10m[zoom=6],
#lakes-10m[zoom=7] {
	polygon-fill: @water;
}
#water-bodies[zoom=8][area>50000000],
#water-bodies[zoom=9][area>10000000],
#water-bodies[zoom=10][area>2500000],
#water-bodies[zoom=11][ area>800000],
#water-bodies[zoom>=12][area>500000],
#water-bodies[zoom>=13][ area>25000],
#water-bodies[zoom>=14][ area>10000],
#water-bodies[zoom>=15] {
	polygon-fill: @water;
}

/* buildings */
#buildings[zoom=13][area>=40000] {
	polygon-pattern-file: url('icons/stripe_sm.png');
	line-width: 0.5; 
	line-color: #000;
}
#buildings[zoom=14][area>=20000] {
	polygon-pattern-file: url('icons/stripe_med.png');
	line-width: 0.5; 
	line-color: #000;
}
#buildings[zoom=15][area>=16000],
#buildings[zoom=16][area>=8000],
#buildings[zoom=17][area>=4000],
#buildings[zoom>=18] {
	polygon-pattern-file: url('icons/stripe.png');
	line-width: 0.5; 
	line-color: #000;
}
#buildings[osm_id=45074542][zoom>=18] {
	polygon-pattern-file: url('icons/stripe_color.png');
	line-width: 1.5; 
	line-color: #00aeef;
}

/* parks */
#green-areas[zoom=10][area>5000000],
#green-areas[zoom=11][area>1000000],
#green-areas[zoom=12][area> 500000],
#green-areas[zoom=12][area> 200000],
#green-areas[zoom=13][area>  75000],
#green-areas[zoom=14][area> 10000],
#green-areas[zoom>14] {
	polygon-pattern-file: url('icons/halftone2.png');
	[leisure='nature_reserve'],
	[landuse='nature_reserve'] {
		polygon-pattern-file: url('icons/halftone2-transparent.png');
	}
}