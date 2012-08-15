/* these labels aren't nested as well as they could be because of errors in
tilemill involving text-name and text-face-name */

/* The labels are for world zooms, mid-zooms, and detailed city zooms. */
Map { font-directory: url(./fonts); }

/* Continent labels are just points. */
#continent-labels[zoom>=1][zoom<3] {
	text-name: '[name]';
	text-face-name: 'Arial Unicode MS Bold';
	text-wrap-width: 32;
	text-size: 14;
	text-fill: #000;
	text-halo-radius: 3;
	text-halo-fill: @land;
	text-line-spacing: -7;
}

/* Ocean, Sea, Bay and other marine labels. Some use of scalerank column
here helps define exactly which features come in at which zoom levels. */
#marine-labels-110m[zoom=2][ScaleRank=0],
#marine-labels-110m[zoom=3],
#marine-labels-50m[zoom=4][ScaleRank<4],
#marine-labels-10m[zoom=5][ScaleRank<6],
#marine-labels-10m[zoom>=6] {
	text-name: '[Name]';
	text-face-name: 'Arial Unicode MS Bold Italic';
	text-wrap-width: 80;
	text-size: 14;
	text-fill: #fff;
	text-halo-radius: 1;
	text-halo-fill: @water;
	text-line-spacing: -7;
}
#marine-labels-10m[zoom=5][ScaleRank<6],
#marine-labels-10m[zoom>=6] {
	text-face-name: 'Arial Unicode MS Italic';
}

/* Country labels */
#country-labels-110m-z3[zoom=3][longfrom<=3] {
	text-name: '[name]';
}
#country-labels-110m-z3[zoom=3][longfrom>3] {
	text-name: '[shortname]';
}
#country-labels-110m-z3[zoom=3][longfrom<=3],
#country-labels-110m-z3[zoom=3][longfrom>3] {
	text-face-name: 'Arial Regular';
	text-wrap-width: 80;
	text-size: 13;
	text-fill: #000;
	text-halo-radius: 2;
	text-halo-fill: @land;
}
#country-labels-110m-z4[zoom=4] {
	text-name: '[label_z4]';
	text-size: 14;
}
#country-labels-110m-z5[zoom=5] {
	text-name: '[label_z5]';
	text-size: 16;
}
#country-labels-110m-z6[zoom=6] {
	text-name: '[label_z6]';
	text-size: 18;
}
#country-labels-110m-z4[zoom=4],
#country-labels-110m-z5[zoom=5],
#country-labels-110m-z6[zoom=6] {
	text-face-name: 'Arial Unicode MS Bold';
	text-wrap-width: 80;
	text-fill: #000;
	text-halo-radius: 2;
	text-halo-fill: @land;
}

/* Admin-1 (states, provinces) labels */
#admin1-labels-50m-z4[zoom=4] {
	text-name: '[label_z4]';
	text-size: 12;
}
#admin1-labels-50m-z5[zoom=5] {
	text-name: '[label_z5]';
	text-size: 16;
}
#admin1-labels-50m-z6[zoom=6] {
	text-name: '[label_z6]';
	text-size: 18;
}
#admin1-labels-50m-z7[zoom=7] {
	text-name: '[label_z7]';
	text-size: 20;
}
#admin1-labels-50m-z4[zoom=4],
#admin1-labels-50m-z5[zoom=5],
#admin1-labels-50m-z6[zoom=6],
#admin1-labels-50m-z7[zoom=7] {
	text-face-name: 'Arial Unicode MS Regular';
	text-wrap-width: 80;
	text-fill: #000;
	text-halo-radius: 2;
	text-halo-fill: @land;
}

/* City labels */
#city-points-z4[zoom=4],
#city-points-z5[zoom=5],
#city-points-z6[zoom=6],
#city-points-z7[zoom=7],
#city-points-z8[zoom=8] {
	point-file: url('icons/dot.png');
	point-allow-overlap: true;
}

#city-labels-z4[zoom=4][justified='left'],
#city-labels-z5[zoom=5][justified='left'],
#city-labels-z6[zoom=6][justified='left'],
#city-labels-z7[zoom=7][justified='left'],
#city-labels-z8[zoom=8][justified='left'] {
	/*text-dx: -5; this isn't working correctly in tilemill*/
	text-dy: 1;
}

#city-labels-z4[zoom=4][justified='right'],
#city-labels-z5[zoom=5][justified='right'],
#city-labels-z6[zoom=6][justified='right'],
#city-labels-z7[zoom=7][justified='right'],
#city-labels-z8[zoom=8][justified='right'] {
	/*text-dx: 5; this isn't working correctly in tilemill*/
	text-dy: 1;
}

#city-labels-z4[zoom=4], 
#city-labels-z5[zoom=5],
#city-labels-z6[zoom=6] {
	text-name: '[name]';
	text-allow-overlap: true;
	text-face-name: 'Arial Unicode MS Regular';
	text-fill: #000;
	text-halo-radius: 2;
	text-halo-fill: @land;
}

#city-labels-z7[zoom=7] {
	text-name: '[name]';
	text-allow-overlap: true;
	text-face-name: 'Arial Unicode MS Bold';
	text-fill: #000;
	text-halo-radius: 2;
	text-halo-fill: @land;    
}

#city-labels-z8[zoom=8],
#city-points-z9[zoom=9],
#city-points-z10[zoom=10],
#city-points-z11[zoom=11],
#city-points-z12[zoom=12] {
	text-name: '[name]';
	text-allow-overlap: true;
	text-face-name: 'Arial Unicode MS Bold';
	text-fill: #000;
	text-halo-radius: 2;
	text-halo-fill: @land;    
}

#city-points-z9[zoom=9],
#city-points-z10[zoom=10],
#city-points-z11[zoom=11],
#city-points-z12[zoom=12] {
	text-name: '[name]';
	text-allow-overlap: false;
}

#city-labels-z4[zoom=4] {
	text-name: '[name]';
	text-size: 10;
}
#city-labels-z4[zoom=4][font_size=14] { 
	text-name: '[name]';
	text-size: 14;
}
#city-labels-z5[zoom=5] {
	text-name: '[name]';
	text-size: 12;
}
#city-labels-z5[zoom=5][font_size=16] {
	text-name: '[name]';
	text-size: 16;
}
#city-labels-z6[zoom=6] {
	text-name: '[name]';
	text-size: 12;
}
#city-labels-z6[zoom=6][font_size=18] {
	text-name: '[name]';
	text-size: 18;
}
#city-labels-z7[zoom=7] {
	text-name: '[name]';
	text-size: 12;
}
#city-labels-z7[zoom=7][font_size=18] {
	text-name: '[name]';
	text-size: 18;
}
#city-labels-z8[zoom=8] {
	text-name: '[name]';
	text-size: 13;
}
#city-labels-z8[zoom=8][font_size=20] {
	text-name: '[name]';
	text-size: 20;
}
#city-points-z9[zoom=9] {
	text-name: '[name]';
	text-size: 13;
}
#city-points-z9[zoom=9][font_size=20] {
	text-name: '[name]';
	text-size: 20;
}
#city-points-z10[zoom=10] {
	text-name: '[name]';
	text-size: 13;
}
#city-points-z10[zoom=10][font_size=20] {
	text-name: '[name]';
	text-size: 20;
}
#city-points-z11[zoom=11] {
	text-name: '[name]';
	text-size: 13;
}
#city-points-z11[zoom=11][font_size=20] {
	text-name: '[name]';
	text-size: 20;
}
#city-points-z12[zoom=12] {
	text-name: '[name]';
	text-size: 13;
}
#city-points-z12[zoom=12][font_size=20] {
	text-name: '[name]';
	text-size: 20;
}

/* Parks and water labels */
#water-bodies-labels[zoom=9][area>100000000][type='reservoir'],
#water-bodies-labels[zoom=10][area>100000000][type='reservoir'],
#water-bodies-labels[zoom=11][area>25000000],
#water-bodies-labels[zoom=12][area>5000000][type='reservoir'],
#green-areas-labels[zoom=12][area>5000000],
#water-bodies-labels[zoom=13][area>2000000][type='reservoir'],
#green-areas-labels[zoom=13][area>2000000],
#water-bodies-labels[zoom=14][area>200000],
#green-areas-labels[zoom=14][area>200000],
#water-bodies-labels[zoom=15][area>50000],
#green-areas-labels[zoom=15][area>50000],
#water-bodies-labels[zoom=16][area>10000],
#water-bodies-labels[zoom>=17],
#green-areas-labels[zoom=16][area>10000],
#green-areas-labels[zoom>=17] {
	text-name: '[name]';
	text-face-name: 'Arial Unicode MS Italic';
	text-fill: #fff;
	text-halo-fill: @water;
	text-placement: point;
	text-max-char-angle-delta: 30;
	text-wrap-width: 40;
	text-halo-radius: 2;
	text-allow-overlap: false;
	text-size: 13;
	text-spacing: 100;
	text-line-spacing: -5;
	text-wrap-width: 70;
	
	[zoom>=9][zoom<12] {
		text-name: '[name]';
		text-spacing: 200;
		text-wrap-width: 50;
	}
	[zoom=12] {
		text-name: '[name]';
		text-spacing: 200;
	}
	[zoom=13] {
		text-name: '[name]';
	}
	[zoom=14] {
		text-name: '[name]';
	}
	[zoom=15] {
		text-name: '[name]';
		text-wrap-width: 30;
	}
	[zoom>=15] {
		text-name: '[name]';
		text-wrap-width: 40;
	}
}

#green-areas-labels[zoom=12][area>5000000],
#green-areas-labels[zoom=13][area>2000000],
#green-areas-labels[zoom=14][area>200000],
#green-areas-labels[zoom=15][area>50000],
#green-areas-labels[zoom=16][area>10000],
#green-areas-labels[zoom>=17] {
	text-face-name: 'Arial Unicode MS Italic';
	text-name: '[name]';
	text-fill: #000;
	text-halo-fill: @land;
}


/* Road labels */
#tunnels[zoom>=15] {
	text-name: '[name]';
	text-fill: #777;
	text-halo-fill: @land;
}

/* zoom 12 */
#major-road-labels[highway='primary'][zoom=12],
#major-road-labels[highway='trunk'][zoom=12] {
	text-name: '[name]';
	text-face-name: 'Arial Unicode MS Bold';
	text-placement: line;
	text-max-char-angle-delta: 30;
	text-fill: @major;
	text-halo-radius: 2;
	text-halo-fill: @major_case;
	text-spacing: 100;
	text-placement: line;

	text-dy: 7;
	text-size: 12;
}

/* zoom 13 */
#major-road-labels[highway='primary'][zoom=13],
#major-road-labels[highway='trunk'][zoom=13] {
	text-name: '[name]';
	text-face-name: 'Arial Unicode MS Bold';
	text-placement: line;
	text-max-char-angle-delta: 30;
	text-fill: @major;
	text-halo-radius: 2;
	text-halo-fill: @major_case;
	text-spacing: 100;
	text-placement: line;
	
	text-dy: 8;
	text-size: 13;
}

/* zoom 14 */
#major-road-labels[highway='trunk'][zoom=14],
#major-road-labels[highway='primary'][zoom=14],
#major-road-labels[highway='secondary'][zoom=14] {
	text-name: '[name]';
	text-face-name: 'Arial Unicode MS Bold';
	text-placement: line;
	text-max-char-angle-delta: 30;
	text-fill: @major;
	text-halo-radius: 2;
	text-halo-fill: @major_case;
	text-spacing: 100;
	text-placement: line;

	text-size: 14;
	text-dy: 9;
}
#major-road-labels[highway='secondary'][zoom=14] {
	text-size: 12;
	text-dy: 7;
}

/* zoom 15 */
#major-road-labels[highway='trunk'][zoom=15],
#major-road-labels[highway='primary'][zoom=15],
#major-road-labels[highway='secondary'][zoom=15],
#major-road-labels[highway='tertiary'][zoom=15] {
	text-name: '[name]';
	text-face-name: 'Arial Unicode MS Bold';
	text-placement: line;
	text-max-char-angle-delta: 30;
	text-fill: @major;
	text-halo-radius: 2;
	text-halo-fill: @major_case;
	text-spacing: 100;
	text-placement: line;

	text-size: 15;
	text-dy: 12;
}
#major-road-labels[highway='secondary'][zoom=15],
#major-road-labels[highway='tertiary'][zoom=15]  {
	text-size: 12;
	text-dy: 11;
}

/* zoom 16 */
#major-road-labels[highway='trunk'][zoom=16],
#major-road-labels[highway='primary'][zoom=16],
#major-road-labels[highway='secondary'][zoom=16],
#major-road-labels[highway='tertiary'][zoom=16] {
	text-name: '[name]';
	text-face-name: 'Arial Unicode MS Bold';
	text-placement: line;
	text-max-char-angle-delta: 30;
	text-fill: @major;
	text-halo-radius: 2;
	text-halo-fill: @major_case;
	text-spacing: 124;
	text-placement: line;

	text-size: 14;
	text-dy: 13;
}
#major-road-labels[highway='secondary'][zoom=16],
#major-road-labels[highway='tertiary'][zoom=16] {
	text-size: 13;
}
#minor-road-labels[zoom=16] {
	text-name: '[name]';
	text-face-name: 'Arial Unicode MS Bold';
	text-placement: line;
	text-max-char-angle-delta: 30;
	text-fill: @minor_2;
	text-halo-radius: 2;
	text-halo-fill: @minor_case;
	text-spacing: 124;
	text-dy: 10;

	text-size: 10;
}

/* zoom 17 */
#major-road-labels[highway='trunk'][zoom=17],
#major-road-labels[highway='primary'][zoom=17],
#major-road-labels[highway='secondary'][zoom=17],
#major-road-labels[highway='tertiary'][zoom=17] {
	text-name: '[name]';
	text-face-name: 'Arial Unicode MS Bold';
	text-placement: line;
	text-max-char-angle-delta: 30;
	text-fill: @major;
	text-halo-radius: 2;
	text-halo-fill: @major_case;
	text-spacing: 180;
	text-placement: line;
	text-dy: 16;

	text-size: 16;
}
#major-road-labels[highway='primary'][zoom=17],
#major-road-labels[highway='secondary'][zoom=17] {
	text-size: 13;
	text-dy: 14;
}
#major-road-labels[highway='tertiary'][zoom=17] {
	text-size: 12;
	text-dy: 13;
}
#minor-road-labels[zoom=17] {
	text-name: '[name]';
	text-face-name: 'Arial Unicode MS Bold';
	text-placement: line;
	text-max-char-angle-delta: 30;
	text-fill: @minor_2;
	text-halo-radius: 2;
	text-halo-fill: @minor_case;
	text-spacing: 180;
	text-dy: 13;

	text-size: 12;
}

/* zoom 18+ */
#major-road-labels[highway='trunk'][zoom>=18],
#major-road-labels[highway='primary'][zoom>=18],
#major-road-labels[highway='secondary'][zoom>=18],
#major-road-labels[highway='tertiary'][zoom>=18] {
	text-name: '[name]';
	text-face-name: 'Arial Unicode MS Bold';
	text-placement: line;
	text-max-char-angle-delta: 30;
	text-fill: @major;
	text-halo-radius: 2;
	text-halo-fill: @major_case;
	text-spacing: 300;
	text-placement: line;

	text-size: 16;
}
#major-road-labels[highway='primary'][zoom>=18],
#major-road-labels[highway='secondary'][zoom>=18] {
	text-size: 14;
}
#major-road-labels[highway='tertiary'][zoom>=18] {
	text-size: 12;
}
#minor-road-labels[zoom>=18] {
	text-name: '[name]';
	text-face-name: 'Arial Unicode MS Bold';
	text-placement: line;
	text-max-char-angle-delta: 30;
	text-fill: @minor_2;
	text-halo-radius: 2;
	text-halo-fill: @minor_case;
	text-spacing: 400;

	text-size: 12;
}

/* Subway stations and icons */
#poi-stations[zoom>=18][railway='station'] { 
	/* this doesn't have a data source right now */
	text-name: '[name]';
	text-face-name: 'Arial Bold';
	text-size: 12;
	text-placement: point;
	text-max-char-angle-delta: 30;
	text-fill: #4581C3;
	text-halo-radius: 1;
	text-halo-fill: @land;
	text-spacing: 100;
	text-allow-overlap: true;
	text-wrap-width: 30;
	text-dx: 0;
	text-dy: 8;
}
#poi-station-labels[zoom=17][railway='station'] { 
	point-file: url('icons/subway_sm.png'); 
}
#poi-station-labels[zoom>=18][railway='station'] { 
	point-file: url('icons/subway.png'); 
}

/* airports */
#airports[zoom=10][natlScale>.57],
#airports[zoom=11][natlScale>.29],
#airports[zoom=12][natlScale>.29],
#airports[zoom=13][natlScale>.29] {
	point-file: url('icons/airplane-19-reverse.png');
}
#airports[zoom=13][natlScale>.29],
#airports[zoom=14][natlScale>.29],
#airports[zoom=15][natlScale>.29],
#airports[zoom>=16][natlScale>.29] {
	text-name: '[label_lng]';
	text-face-name: 'Arial Unicode MS Italic';
	text-fill: #000;
	text-size: 14;
	text-halo-fill: @land;
	text-halo-radius: 2;
	text-wrap-width: 128;
	text-dy: 14;
	text-allow-overlap: true;
}
#airports[zoom=14][natlScale>.29],
#airports[zoom=15][natlScale>.29],
#airports[zoom>=16][natlScale>.29] {
	text-name: '[label_lng]';
	text-dy: 0;
}