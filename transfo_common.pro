//Steinmetz parameters for silicon steel
core_density = 7650; // kg/m3 = rho
alpha = 1; // Single frequency operation
k_st=0.025;
beta=2.1;


// Dimensions

width_Core = 1.;
height_Core = 1.;
// Thickness along Oz (to be considered for a correct definition of voltage)
thickness_Core = 1.;
sheets = 10;
thickness_sheet = thickness_Core/sheets;
width_Window = 0.5;
width_Outer_Window=width_Window;
//width_Outer_Window=width_Window*0.5- gap_Core_Coil;
height_Window = 0.5;

width_Core_Leg = (width_Core-width_Window)/2.;
height_Core_Leg = (height_Core-height_Window)/2.;
r_fillet = width_Window * 0.15; 

width_Coil = 0.10;
height_Coil = 0.15;
gap_Core_Coil = 0.05;

// Gaps around the core (for air box)
gap_Core_Box_X = 1.;
gap_Core_Box_Y = 1.5;

// Characteristic lenghts (for mesh sizes)

s = 1;

c_Core = width_Core_Leg/10. *s;

c_Coil = height_Coil/2/5 *s;

c_Box = gap_Core_Box_X/6. *s;

// Physical regions

AIR_EXT = 1001;
SUR_AIR_EXT = 1002;
AIR_WINDOW_1 = 1011;
AIR_WINDOW_2 = 1012;
AIR_WINDOW_3 = 1013;
AIR_WINDOW_4 = 1014;

CORE = 1050;


COIL_P1_L_POS = 1301;
COIL_P1_L_MIN = 1302;
COIL_P1_H_POS = 1303;
COIL_P1_H_MIN = 1304;

COIL_P2_L_POS = 1401;
COIL_P2_L_MIN = 1402;
COIL_P2_H_POS = 1403;
COIL_P2_H_MIN = 1404;

COIL_P3_L_POS = 1501;
COIL_P3_L_MIN = 1502;
COIL_P3_H_POS = 1503;
COIL_P3_H_MIN = 1504;
