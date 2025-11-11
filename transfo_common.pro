
// Dimensions

width_Core = 1.;
height_Core = 1.;

// Thickness along Oz (to be considered for a correct definition of voltage)
thickness_Core = 1.;

width_Window = 0.5;
height_Window = 0.5;

width_Core_Leg = (width_Core-width_Window)/2.;

width_Coil_1 = 0.10;
height_Coil_1 = 0.25;
gap_Core_Coil_1 = 0.05;

width_Coil_2 = 0.10;
height_Coil_2 = 0.25;
gap_Core_Coil_2 = 0.05;

// afmetingen primaire en secundaire spoel in laag en hoog voltage van 1ste been
width_Coil_p1_L = 0.10;
height_Coil_p1_L = 0.25;
gap_Core_Coil_p1_L = 0.05;

width_Coil_p1_H = 0.10;
height_Coil_p1_H = 0.25;
gap_Core_Coil_p1_H = 0.05;

// afmetingen primaire en secundaire spoel in laag en hoog voltage van 2de been
width_Coil_p2_L = 0.10;
height_Coil_p2_L = 0.25;
gap_Core_Coil_p2_L = 0.05;

width_Coil_p2_H = 0.10;
height_Coil_p2_H = 0.25;
gap_Coil_p2_L_Coil_p2_H = 0.05;

// afmetingen primaire en secundaire spoel in laag en hoog voltage van 3de been
width_Coil_p3_L = 0.10;
height_Coil_p3_L = 0.25;
gap_Core_Coil_p3_L = 0.05;

width_Coil_p3_H = 0.10;
height_Coil_p3_H = 0.25;
gap_Coil_p3_L_Coil_p3_H = 0.05;

// Gaps around the core (for air box)
gap_Core_Box_X = 1.;
gap_Core_Box_Y = 1.;

// Characteristic lenghts (for mesh sizes)

s = 1;

c_Core = width_Core_Leg/10. *s;

c_Coil_1 = height_Coil_1/2/5 *s;
c_Coil_2 = height_Coil_2/2/5 *s;

c_Coil_p1_L = height_Coil_p1_L/2/5 *s;
c_Coil_p1_H = height_Coil_p1_H/2/5 *s;

c_Coil_p2_L = height_Coil_p2_L/2/5 *s;
c_Coil_p2_H = height_Coil_p2_H/2/5 *s;

c_Coil_p3_L = height_Coil_p3_L/2/5 *s;
c_Coil_p3_H = height_Coil_p3_H/2/5 *s;

c_Box = gap_Core_Box_X/6. *s;

// Physical regions

AIR_EXT = 1001;
SUR_AIR_EXT = 1002;
AIR_WINDOW = 1011;

CORE = 1050;

COIL_1_PLUS = 1101;
COIL_1_MINUS = 1102;

COIL_2_PLUS = 1201;
COIL_2_MINUS = 1202;


COIL_P1_L_POS = 1301;
COIL_P1_L_NEG = 1302;
COIL_P1_H_POS = 1303;
COIL_P1_H_NEG = 1304;

COIL_P2_L_POS = 1401;
COIL_P2_L_NEG = 1402;
COIL_P2_H_POS = 1403;
COIL_P2_H_NEG = 1404;

COIL_P3_L_POS = 1501;
COIL_P3_L_NEG = 1502;
COIL_P3_H_POS = 1503;
COIL_P3_H_NEG = 1504;


