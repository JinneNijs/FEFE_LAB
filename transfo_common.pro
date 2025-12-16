//Steinmetz parameters for silicon steel
core_density = 7650; // kg/m3 = rho
alpha = 1; // Single frequency operation
k_st=0.01;
beta=2.1;


// Dimensions   

width_Core = .6; // Width of the core
height_Core = .65; // Height of the core
// Thickness along Oz (to be considered for a correct definition of voltage)
thickness_Core = 0.3;
sheets = 20;
thickness_sheet = thickness_Core/sheets;
width_Window = 0.14;
width_Outer_Window=width_Window*0.5-0.005;
height_Window = 0.21;

width_Core_Leg = (width_Core-2*width_Window)/3.;
height_Core_Leg = width_Core_Leg;
r_fillet = width_Window * 0.15;  // Hoe hard de hoeken afgerond worden

width_Coil = 0.05;
height_Coil = 0.08;
gap_Core_Coil = 0.0067;

// Gaps around the core (for air box)
gap_Core_Box_X = 0.5;
gap_Core_Box_Y = 0.5;

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
