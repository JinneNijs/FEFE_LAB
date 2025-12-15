Include "transfo_common.pro";

// ==============================================================================
// 5-LEG CORE - GESTART VANAF OORSPRONG (0,0,0) - MET AFGERONDE HOEKEN
// ==============================================================================

// Parameter voor de afronding (bijv. 15% van de kleinste raambreedte)
// Pas dit getal aan om de hoeken ronder of scherper te maken
r_fillet = width_Window * 0.15; 

// ------------------------------------------------------------------
// PUNTEN DEFINITIE (Exact zoals jouw originele code)
// ------------------------------------------------------------------

// --- Been 1 (Meest Links) ---
p_Leg_1_1=newp; Point(newp) = {0, 0, 0, c_Core};
p_Leg_1_3=newp; Point(newp) = {width_Core_Leg, height_Core_Leg, 0, c_Core};

p_Leg_1_2=newp; Point(newp) = {0, height_Core, 0, c_Core};
p_Leg_1_4=newp; Point(newp) = {width_Core_Leg, height_Core_Leg+height_Window, 0, c_Core};

// --- Been 2 ---
p_Leg_2_5=newp; Point(newp) = {width_Core_Leg + width_Outer_Window, height_Core_Leg, 0, c_Core};
p_Leg_2_7=newp; Point(newp) = {2*width_Core_Leg + width_Outer_Window, height_Core_Leg, 0, c_Core};

p_Leg_2_6=newp; Point(newp) = {width_Core_Leg + width_Outer_Window, height_Core_Leg + height_Window, 0, c_Core};
p_Leg_2_8=newp; Point(newp) = {2*width_Core_Leg + width_Outer_Window, height_Core_Leg + height_Window, 0, c_Core};

// --- Been 3 (Middelste) ---
p_Leg_3_9=newp; Point(newp)  = {2*width_Core_Leg + width_Window + width_Outer_Window, height_Core_Leg, 0, c_Core};
p_Leg_3_11=newp; Point(newp) = {3*width_Core_Leg + width_Window + width_Outer_Window, height_Core_Leg, 0, c_Core};

p_Leg_3_10=newp; Point(newp) = {2*width_Core_Leg + width_Window+width_Outer_Window, height_Core_Leg+height_Window, 0, c_Core};
p_Leg_3_12=newp; Point(newp) = {3*width_Core_Leg + width_Window+width_Outer_Window, height_Core_Leg+height_Window, 0, c_Core};

// --- Been 4 ---
p_Leg_4_13=newp; Point(newp) = {3*width_Core_Leg + 2*width_Window + width_Outer_Window, height_Core_Leg, 0, c_Core};
p_Leg_4_15=newp; Point(newp) = {4*width_Core_Leg + 2*width_Window + width_Outer_Window, height_Core_Leg, 0, c_Core};

p_Leg_4_14=newp; Point(newp) = {3*width_Core_Leg + 2*width_Window + width_Outer_Window, height_Core_Leg+height_Window, 0, c_Core};
p_Leg_4_16=newp; Point(newp) = {4*width_Core_Leg + 2*width_Window + width_Outer_Window, height_Core_Leg+height_Window, 0, c_Core};

// --- Been 5 (Meest Rechts) ---
p_Leg_5_17=newp; Point(newp) = {4*width_Core_Leg + 2*width_Window + 2*width_Outer_Window, height_Core_Leg, 0, c_Core};
p_Leg_5_19=newp; Point(newp) = {5*width_Core_Leg + 2*width_Window + 2*width_Outer_Window, 0, 0, c_Core};

p_Leg_5_18=newp; Point(newp) = {4*width_Core_Leg + 2*width_Window + 2*width_Outer_Window, height_Core_Leg+height_Window, 0, c_Core};
p_Leg_5_20=newp; Point(newp) = {5*width_Core_Leg + 2*width_Window + 2*width_Outer_Window, 2*height_Core_Leg+height_Window, 0, c_Core};


// ------------------------------------------------------------------
// LIJNEN MAKEN (Hier passen we de fillets toe)
// ------------------------------------------------------------------

// Macro om de 4 hoekpunten van een raam op te halen en er fillets van te maken
// We gebruiken de coordinaten van jouw bestaande punten:
// Links-Onder (BL), Links-Boven (TL), Rechts-Boven (TR), Rechts-Onder (BR)

// === WINDOW 1 ===
// Coordinaten ophalen uit jouw punten p_Leg_1_3 (BL), p_Leg_1_4 (TL), p_Leg_2_6 (TR), p_Leg_2_5 (BR)
x_L = Point{p_Leg_1_3}; 
x_R = Point{p_Leg_2_5};
y_B = Point{p_Leg_1_3};
y_T = Point{p_Leg_1_4};

// Punten maken voor de boogjes
p_w1_bl_1 = newp; Point(newp) = {x_L[0] + r_fillet, y_B[1], 0, c_Core};
p_w1_bl_c = newp; Point(newp) = {x_L[0] + r_fillet, y_B[1] + r_fillet, 0, c_Core}; // Center
p_w1_bl_2 = newp; Point(newp) = {x_L[0], y_B[1] + r_fillet, 0, c_Core};

p_w1_tl_1 = newp; Point(newp) = {x_L[0], y_T[1] - r_fillet, 0, c_Core};
p_w1_tl_c = newp; Point(newp) = {x_L[0] + r_fillet, y_T[1] - r_fillet, 0, c_Core}; // Center
p_w1_tl_2 = newp; Point(newp) = {x_L[0] + r_fillet, y_T[1], 0, c_Core};

p_w1_tr_1 = newp; Point(newp) = {x_R[0] - r_fillet, y_T[1], 0, c_Core};
p_w1_tr_c = newp; Point(newp) = {x_R[0] - r_fillet, y_T[1] - r_fillet, 0, c_Core}; // Center
p_w1_tr_2 = newp; Point(newp) = {x_R[0], y_T[1] - r_fillet, 0, c_Core};
p_w1_br_1 = newp; Point(newp) = {x_R[0], y_B[1] + r_fillet, 0, c_Core};
p_w1_br_c = newp; Point(newp) = {x_R[0] - r_fillet, y_B[1] + r_fillet, 0, c_Core}; // Center
p_w1_br_2 = newp; Point(newp) = {x_R[0] - r_fillet, y_B[1], 0, c_Core};

l_Core_In_1[]={};
l_Core_In_1[]+=newl; Line(newl)   = {p_w1_bl_2, p_w1_tl_1};       // Links omhoog
l_Core_In_1[]+=newl; Circle(newl) = {p_w1_tl_1, p_w1_tl_c, p_w1_tl_2}; // Bocht LB
l_Core_In_1[]+=newl; Line(newl)   = {p_w1_tl_2, p_w1_tr_1};       // Boven naar rechts
l_Core_In_1[]+=newl; Circle(newl) = {p_w1_tr_1, p_w1_tr_c, p_w1_tr_2}; // Bocht RB
l_Core_In_1[]+=newl; Line(newl)   = {p_w1_tr_2, p_w1_br_1};       // Rechts omlaag
l_Core_In_1[]+=newl; Circle(newl) = {p_w1_br_1, p_w1_br_c, p_w1_br_2}; // Bocht RO
l_Core_In_1[]+=newl; Line(newl)   = {p_w1_br_2, p_w1_bl_1};       // Onder naar links
l_Core_In_1[]+=newl; Circle(newl) = {p_w1_bl_1, p_w1_bl_c, p_w1_bl_2}; // Bocht LO


// === WINDOW 2 ===
// Coordinaten ophalen: p_Leg_2_7 (BL), p_Leg_2_8 (TL), p_Leg_3_10 (TR), p_Leg_3_9 (BR)
x_L = Point{p_Leg_2_7}; 
x_R = Point{p_Leg_3_9};
// Y coordinaten zijn overal hetzelfde (y_B en y_T), dus hergebruiken we

p_w2_bl_1 = newp; Point(newp) = {x_L[0] + r_fillet, y_B[1], 0, c_Core};
p_w2_bl_c = newp; Point(newp) = {x_L[0] + r_fillet, y_B[1] + r_fillet, 0, c_Core};
p_w2_bl_2 = newp; Point(newp) = {x_L[0], y_B[1] + r_fillet, 0, c_Core};

p_w2_tl_1 = newp; Point(newp) = {x_L[0], y_T[1] - r_fillet, 0, c_Core};
p_w2_tl_c = newp; Point(newp) = {x_L[0] + r_fillet, y_T[1] - r_fillet, 0, c_Core};
p_w2_tl_2 = newp; Point(newp) = {x_L[0] + r_fillet, y_T[1], 0, c_Core};

p_w2_tr_1 = newp; Point(newp) = {x_R[0] - r_fillet, y_T[1], 0, c_Core};
p_w2_tr_c = newp; Point(newp) = {x_R[0] - r_fillet, y_T[1] - r_fillet, 0, c_Core};
p_w2_tr_2 = newp; Point(newp) = {x_R[0], y_T[1] - r_fillet, 0, c_Core};
p_w2_br_1 = newp; Point(newp) = {x_R[0], y_B[1] + r_fillet, 0, c_Core};
p_w2_br_c = newp; Point(newp) = {x_R[0] - r_fillet, y_B[1] + r_fillet, 0, c_Core};
p_w2_br_2 = newp; Point(newp) = {x_R[0] - r_fillet, y_B[1], 0, c_Core};

l_Core_In_2[]={};
l_Core_In_2[]+=newl; Line(newl)   = {p_w2_bl_2, p_w2_tl_1};
l_Core_In_2[]+=newl; Circle(newl) = {p_w2_tl_1, p_w2_tl_c, p_w2_tl_2};
l_Core_In_2[]+=newl; Line(newl)   = {p_w2_tl_2, p_w2_tr_1};
l_Core_In_2[]+=newl; Circle(newl) = {p_w2_tr_1, p_w2_tr_c, p_w2_tr_2};
l_Core_In_2[]+=newl; Line(newl)   = {p_w2_tr_2, p_w2_br_1};
l_Core_In_2[]+=newl; Circle(newl) = {p_w2_br_1, p_w2_br_c, p_w2_br_2};
l_Core_In_2[]+=newl; Line(newl)   = {p_w2_br_2, p_w2_bl_1};
l_Core_In_2[]+=newl; Circle(newl) = {p_w2_bl_1, p_w2_bl_c, p_w2_bl_2};


// === WINDOW 3 ===
// Coordinaten: p_Leg_3_11 (BL), p_Leg_3_12 (TL), p_Leg_4_14 (TR), p_Leg_4_13 (BR)
x_L = Point{p_Leg_3_11}; 
x_R = Point{p_Leg_4_13};

p_w3_bl_1 = newp; Point(newp) = {x_L[0] + r_fillet, y_B[1], 0, c_Core};
p_w3_bl_c = newp; Point(newp) = {x_L[0] + r_fillet, y_B[1] + r_fillet, 0, c_Core};
p_w3_bl_2 = newp; Point(newp) = {x_L[0], y_B[1] + r_fillet, 0, c_Core};

p_w3_tl_1 = newp; Point(newp) = {x_L[0], y_T[1] - r_fillet, 0, c_Core};
p_w3_tl_c = newp; Point(newp) = {x_L[0] + r_fillet, y_T[1] - r_fillet, 0, c_Core};
p_w3_tl_2 = newp; Point(newp) = {x_L[0] + r_fillet, y_T[1], 0, c_Core};

p_w3_tr_1 = newp; Point(newp) = {x_R[0] - r_fillet, y_T[1], 0, c_Core};
p_w3_tr_c = newp; Point(newp) = {x_R[0] - r_fillet, y_T[1] - r_fillet, 0, c_Core};
p_w3_tr_2 = newp; Point(newp) = {x_R[0], y_T[1] - r_fillet, 0, c_Core};

p_w3_br_1 = newp; Point(newp) = {x_R[0], y_B[1] + r_fillet, 0, c_Core};
p_w3_br_c = newp; Point(newp) = {x_R[0] - r_fillet, y_B[1] + r_fillet, 0, c_Core};
p_w3_br_2 = newp; Point(newp) = {x_R[0] - r_fillet, y_B[1], 0, c_Core};
l_Core_In_3[]={};
l_Core_In_3[]+=newl; Line(newl)   = {p_w3_bl_2, p_w3_tl_1};
l_Core_In_3[]+=newl; Circle(newl) = {p_w3_tl_1, p_w3_tl_c, p_w3_tl_2};
l_Core_In_3[]+=newl; Line(newl)   = {p_w3_tl_2, p_w3_tr_1};
l_Core_In_3[]+=newl; Circle(newl) = {p_w3_tr_1, p_w3_tr_c, p_w3_tr_2};
l_Core_In_3[]+=newl; Line(newl)   = {p_w3_tr_2, p_w3_br_1};
l_Core_In_3[]+=newl; Circle(newl) = {p_w3_br_1, p_w3_br_c, p_w3_br_2};
l_Core_In_3[]+=newl; Line(newl)   = {p_w3_br_2, p_w3_bl_1};
l_Core_In_3[]+=newl; Circle(newl) = {p_w3_bl_1, p_w3_bl_c, p_w3_bl_2};


// === WINDOW 4 ===
// Coordinaten: p_Leg_4_15 (BL), p_Leg_4_16 (TL), p_Leg_5_18 (TR), p_Leg_5_17 (BR)
x_L = Point{p_Leg_4_15}; 
x_R = Point{p_Leg_5_17};

p_w4_bl_1 = newp; Point(newp) = {x_L[0] + r_fillet, y_B[1], 0, c_Core};
p_w4_bl_c = newp; Point(newp) = {x_L[0] + r_fillet, y_B[1] + r_fillet, 0, c_Core};
p_w4_bl_2 = newp; Point(newp) = {x_L[0], y_B[1] + r_fillet, 0, c_Core};
p_w4_tl_1 = newp; Point(newp) = {x_L[0], y_T[1] - r_fillet, 0, c_Core};
p_w4_tl_c = newp; Point(newp) = {x_L[0] + r_fillet, y_T[1] - r_fillet, 0, c_Core};
p_w4_tl_2 = newp; Point(newp) = {x_L[0] + r_fillet, y_T[1], 0, c_Core};

p_w4_tr_1 = newp; Point(newp) = {x_R[0] - r_fillet, y_T[1], 0, c_Core};
p_w4_tr_c = newp; Point(newp) = {x_R[0] - r_fillet, y_T[1] - r_fillet, 0, c_Core};
p_w4_tr_2 = newp; Point(newp) = {x_R[0], y_T[1] - r_fillet, 0, c_Core};

p_w4_br_1 = newp; Point(newp) = {x_R[0], y_B[1] + r_fillet, 0, c_Core};
p_w4_br_c = newp; Point(newp) = {x_R[0] - r_fillet, y_B[1] + r_fillet, 0, c_Core};
p_w4_br_2 = newp; Point(newp) = {x_R[0] - r_fillet, y_B[1], 0, c_Core};

l_Core_In_4[]={};
l_Core_In_4[]+=newl; Line(newl)   = {p_w4_bl_2, p_w4_tl_1};
l_Core_In_4[]+=newl; Circle(newl) = {p_w4_tl_1, p_w4_tl_c, p_w4_tl_2};
l_Core_In_4[]+=newl; Line(newl)   = {p_w4_tl_2, p_w4_tr_1};
l_Core_In_4[]+=newl; Circle(newl) = {p_w4_tr_1, p_w4_tr_c, p_w4_tr_2};
l_Core_In_4[]+=newl; Line(newl)   = {p_w4_tr_2, p_w4_br_1};
l_Core_In_4[]+=newl; Circle(newl) = {p_w4_br_1, p_w4_br_c, p_w4_br_2};
l_Core_In_4[]+=newl; Line(newl)   = {p_w4_br_2, p_w4_bl_1};
l_Core_In_4[]+=newl; Circle(newl) = {p_w4_bl_1, p_w4_bl_c, p_w4_bl_2};


// ------------------------------------------------------------------
// BUITENKANT
// ------------------------------------------------------------------
l_Core_Out[]={};
l_Core_Out[]+=newl; Line(newl) = {p_Leg_1_1,p_Leg_1_2};
l_Core_Out[]+=newl; Line(newl) = {p_Leg_1_2,p_Leg_5_20};
l_Core_Out[]+=newl; Line(newl) = {p_Leg_5_20,p_Leg_5_19};
l_Core_Out[]+=newl; Line(newl) = {p_Leg_5_19,p_Leg_1_1};

// maak de oppervlakte van de kern
// 1st lijnen toevoegen aan curve loop
// 2nd oppervlakte maken
ll_Core_In_1=newll; Curve Loop(newll) = {l_Core_In_1[]};
ll_Core_In_2=newll; Curve Loop(newll) = {l_Core_In_2[]};
ll_Core_In_3=newll; Curve Loop(newll) = {l_Core_In_3[]};
ll_Core_In_4=newll; Curve Loop(newll) = {l_Core_In_4[]};
ll_Core_Out=newll; Curve Loop(newll) = {l_Core_Out[]};
s_Core=news; Plane Surface(news) = {ll_Core_Out,ll_Core_In_1,ll_Core_In_2,ll_Core_In_3,ll_Core_In_4};
Physical Surface("CORE", CORE) = {s_Core};


// Coil PHASE 1 HIGH, MIN
x_[]=Point{p_Leg_2_6};
p_Coil_p1_H_min_1=newp; Point(newp) = {x_[0]-gap_Core_Coil-width_Coil,x_[1]-gap_Core_Coil-height_Coil,0,c_Coil};
p_Coil_p1_H_min_2=newp; Point(newp) = {x_[0]-gap_Core_Coil-width_Coil,x_[1]-gap_Core_Coil,0,c_Coil};
p_Coil_p1_H_min_3=newp; Point(newp) = {x_[0]-gap_Core_Coil,x_[1]-gap_Core_Coil,0,c_Coil};
p_Coil_p1_H_min_4=newp; Point(newp) = {x_[0]-gap_Core_Coil,x_[1]-gap_Core_Coil-height_Coil,0,c_Coil};

l_Coil_p1_H_min[]={};
l_Coil_p1_H_min[]+=newl; Line(newl) = {p_Coil_p1_H_min_1,p_Coil_p1_H_min_2};
l_Coil_p1_H_min[]+=newl; Line(newl) = {p_Coil_p1_H_min_2,p_Coil_p1_H_min_3};
l_Coil_p1_H_min[]+=newl; Line(newl) = {p_Coil_p1_H_min_3,p_Coil_p1_H_min_4};
l_Coil_p1_H_min[]+=newl; Line(newl) = {p_Coil_p1_H_min_4,p_Coil_p1_H_min_1};

ll_Coil_p1_H_min=newll; Curve Loop(newll) = {l_Coil_p1_H_min[]};
s_Coil_p1_H_min=news; Plane Surface(news) = {ll_Coil_p1_H_min};
Physical Surface("COIL_P1_H_MIN", COIL_P1_H_MIN) = {s_Coil_p1_H_min};

// Coil PHASE 1 LOW, MIN
x_[]=Point{p_Leg_2_5};
p_Coil_p1_L_min_1=newp; Point(newp) = {x_[0]-gap_Core_Coil-width_Coil,x_[1]+gap_Core_Coil,0,c_Coil};
p_Coil_p1_L_min_2=newp; Point(newp) = {x_[0]-gap_Core_Coil-width_Coil,x_[1]+gap_Core_Coil+height_Coil,0,c_Coil};
p_Coil_p1_L_min_3=newp; Point(newp) = {x_[0]-gap_Core_Coil,x_[1]+gap_Core_Coil+height_Coil,0,c_Coil};
p_Coil_p1_L_min_4=newp; Point(newp) = {x_[0]-gap_Core_Coil,x_[1]+gap_Core_Coil,0,c_Coil};

l_Coil_p1_L_min[]={};
l_Coil_p1_L_min[]+=newl; Line(newl) = {p_Coil_p1_L_min_1,p_Coil_p1_L_min_2};
l_Coil_p1_L_min[]+=newl; Line(newl) = {p_Coil_p1_L_min_2,p_Coil_p1_L_min_3};
l_Coil_p1_L_min[]+=newl; Line(newl) = {p_Coil_p1_L_min_3,p_Coil_p1_L_min_4};
l_Coil_p1_L_min[]+=newl; Line(newl) = {p_Coil_p1_L_min_4,p_Coil_p1_L_min_1};
ll_Coil_p1_L_min=newll; Curve Loop(newll) = {l_Coil_p1_L_min[]};
s_Coil_p1_L_min=news; Plane Surface(news) = {ll_Coil_p1_L_min};
Physical Surface("COIL_P1_L_MIN", COIL_P1_L_MIN) = {s_Coil_p1_L_min};

// coil PHASE 1 HIGH, POS
x_[]=Point{p_Leg_2_8};
p_Coil_p1_H_pos_1=newp; Point(newp) = {x_[0]+gap_Core_Coil,x_[1]-gap_Core_Coil-height_Coil,0,c_Coil};
p_Coil_p1_H_pos_2=newp; Point(newp) = {x_[0]+gap_Core_Coil,x_[1]-gap_Core_Coil,0,c_Coil};
p_Coil_p1_H_pos_3=newp; Point(newp) = {x_[0]+gap_Core_Coil+width_Coil,x_[1]-gap_Core_Coil,0,c_Coil};
p_Coil_p1_H_pos_4=newp; Point(newp) = {x_[0]+gap_Core_Coil+width_Coil,x_[1]-gap_Core_Coil-height_Coil,0,c_Coil};

l_Coil_p1_H_pos[]={};
l_Coil_p1_H_pos[]+=newl; Line(newl) = {p_Coil_p1_H_pos_1,p_Coil_p1_H_pos_2};
l_Coil_p1_H_pos[]+=newl; Line(newl) = {p_Coil_p1_H_pos_2,p_Coil_p1_H_pos_3};
l_Coil_p1_H_pos[]+=newl; Line(newl) = {p_Coil_p1_H_pos_3,p_Coil_p1_H_pos_4};
l_Coil_p1_H_pos[]+=newl; Line(newl) = {p_Coil_p1_H_pos_4,p_Coil_p1_H_pos_1};
ll_Coil_p1_H_pos=newll; Curve Loop(newll) = {l_Coil_p1_H_pos[]};
s_Coil_p1_H_pos=news; Plane Surface(news) = {ll_Coil_p1_H_pos};
Physical Surface("COIL_P1_H_POS", COIL_P1_H_POS) = {s_Coil_p1_H_pos};

// coil PHASE 1 LOW, POS
x_[]=Point{p_Leg_2_7};
p_Coil_p1_L_pos_1=newp; Point(newp) = {x_[0]+gap_Core_Coil,x_[1]+gap_Core_Coil,0,c_Coil};
p_Coil_p1_L_pos_2=newp; Point(newp) = {x_[0]+gap_Core_Coil,x_[1]+gap_Core_Coil+height_Coil,0,c_Coil};
p_Coil_p1_L_pos_3=newp; Point(newp) = {x_[0]+gap_Core_Coil+width_Coil,x_[1]+gap_Core_Coil+height_Coil,0,c_Coil};
p_Coil_p1_L_pos_4=newp; Point(newp) = {x_[0]+gap_Core_Coil+width_Coil,x_[1]+gap_Core_Coil,0,c_Coil};
l_Coil_p1_L_pos[]={};
l_Coil_p1_L_pos[]+=newl; Line(newl) = {p_Coil_p1_L_pos_1,p_Coil_p1_L_pos_2};
l_Coil_p1_L_pos[]+=newl; Line(newl) = {p_Coil_p1_L_pos_2,p_Coil_p1_L_pos_3};
l_Coil_p1_L_pos[]+=newl; Line(newl) = {p_Coil_p1_L_pos_3,p_Coil_p1_L_pos_4};
l_Coil_p1_L_pos[]+=newl; Line(newl) = {p_Coil_p1_L_pos_4,p_Coil_p1_L_pos_1};
ll_Coil_p1_L_pos=newll; Curve Loop(newll) = {l_Coil_p1_L_pos[]};
s_Coil_p1_L_pos=news; Plane Surface(news) = {ll_Coil_p1_L_pos};
Physical Surface("COIL_P1_L_POS", COIL_P1_L_POS) = {s_Coil_p1_L_pos};

// coil PHASE 2, HIGH, MIN
x_[]=Point{p_Leg_3_10};
p_Coil_p2_H_min_1=newp; Point(newp) = {x_[0]-gap_Core_Coil-width_Coil,x_[1]-gap_Core_Coil-height_Coil,0,c_Coil};
p_Coil_p2_H_min_2=newp; Point(newp) = {x_[0]-gap_Core_Coil-width_Coil,x_[1]-gap_Core_Coil,0,c_Coil};
p_Coil_p2_H_min_3=newp; Point(newp) = {x_[0]-gap_Core_Coil,x_[1]-gap_Core_Coil,0,c_Coil};
p_Coil_p2_H_min_4=newp; Point(newp) = {x_[0]-gap_Core_Coil,x_[1]-gap_Core_Coil-height_Coil,0,c_Coil};
l_Coil_p2_H_min[]={};
l_Coil_p2_H_min[]+=newl; Line(newl) = {p_Coil_p2_H_min_1,p_Coil_p2_H_min_2};
l_Coil_p2_H_min[]+=newl; Line(newl) = {p_Coil_p2_H_min_2,p_Coil_p2_H_min_3};
l_Coil_p2_H_min[]+=newl; Line(newl) = {p_Coil_p2_H_min_3,p_Coil_p2_H_min_4};
l_Coil_p2_H_min[]+=newl; Line(newl) = {p_Coil_p2_H_min_4,p_Coil_p2_H_min_1};
ll_Coil_p2_H_min=newll; Curve Loop(newll) = {l_Coil_p2_H_min[]};
s_Coil_p2_H_min=news; Plane Surface(news) = {ll_Coil_p2_H_min};
Physical Surface("COIL_P2_H_MIN", COIL_P2_H_MIN) = {s_Coil_p2_H_min};

// coil PHASE 2, LOW, MIN
x_[]=Point{p_Leg_3_9};
p_Coil_p2_L_min_1=newp; Point(newp) = {x_[0]-gap_Core_Coil-width_Coil,x_[1]+gap_Core_Coil,0,c_Coil};
p_Coil_p2_L_min_2=newp; Point(newp) = {x_[0]-gap_Core_Coil-width_Coil,x_[1]+gap_Core_Coil+height_Coil,0,c_Coil};
p_Coil_p2_L_min_3=newp; Point(newp) = {x_[0]-gap_Core_Coil,x_[1]+gap_Core_Coil+height_Coil,0,c_Coil};
p_Coil_p2_L_min_4=newp; Point(newp) = {x_[0]-gap_Core_Coil,x_[1]+gap_Core_Coil,0,c_Coil};
l_Coil_p2_L_min[]={};
l_Coil_p2_L_min[]+=newl; Line(newl) = {p_Coil_p2_L_min_1,p_Coil_p2_L_min_2};
l_Coil_p2_L_min[]+=newl; Line(newl) = {p_Coil_p2_L_min_2,p_Coil_p2_L_min_3};
l_Coil_p2_L_min[]+=newl; Line(newl) = {p_Coil_p2_L_min_3,p_Coil_p2_L_min_4};
l_Coil_p2_L_min[]+=newl; Line(newl) = {p_Coil_p2_L_min_4,p_Coil_p2_L_min_1};
ll_Coil_p2_L_min=newll; Curve Loop(newll) = {l_Coil_p2_L_min[]};
s_Coil_p2_L_min=news; Plane Surface(news) = {ll_Coil_p2_L_min};
Physical Surface("COIL_P2_L_MIN", COIL_P2_L_MIN) = {s_Coil_p2_L_min};

// coil PHASE 2, HIGH, POS
x_[]=Point{p_Leg_3_12};
p_Coil_p2_H_pos_1=newp; Point(newp) = {x_[0]+gap_Core_Coil,x_[1]-gap_Core_Coil-height_Coil,0,c_Coil};
p_Coil_p2_H_pos_2=newp; Point(newp) = {x_[0]+gap_Core_Coil,x_[1]-gap_Core_Coil,0,c_Coil};
p_Coil_p2_H_pos_3=newp; Point(newp) = {x_[0]+gap_Core_Coil+width_Coil,x_[1]-gap_Core_Coil,0,c_Coil};
p_Coil_p2_H_pos_4=newp; Point(newp) = {x_[0]+gap_Core_Coil+width_Coil,x_[1]-gap_Core_Coil-height_Coil,0,c_Coil};
l_Coil_p2_H_pos[]={};
l_Coil_p2_H_pos[]+=newl; Line(newl) = {p_Coil_p2_H_pos_1,p_Coil_p2_H_pos_2};
l_Coil_p2_H_pos[]+=newl; Line(newl) = {p_Coil_p2_H_pos_2,p_Coil_p2_H_pos_3};
l_Coil_p2_H_pos[]+=newl; Line(newl) = {p_Coil_p2_H_pos_3,p_Coil_p2_H_pos_4};
l_Coil_p2_H_pos[]+=newl; Line(newl) = {p_Coil_p2_H_pos_4,p_Coil_p2_H_pos_1};
ll_Coil_p2_H_pos=newll; Curve Loop(newll) = {l_Coil_p2_H_pos[]};
s_Coil_p2_H_pos=news; Plane Surface(news) = {ll_Coil_p2_H_pos};
Physical Surface("COIL_P2_H_POS", COIL_P2_H_POS) = {s_Coil_p2_H_pos};

// coil PHASE 2, LOW, POS
x_[]=Point{p_Leg_3_11};
p_Coil_p2_L_pos_1=newp; Point(newp) = {x_[0]+gap_Core_Coil,x_[1]+gap_Core_Coil,0,c_Coil};
p_Coil_p2_L_pos_2=newp; Point(newp) = {x_[0]+gap_Core_Coil,x_[1]+gap_Core_Coil+height_Coil,0,c_Coil};
p_Coil_p2_L_pos_3=newp; Point(newp) = {x_[0]+gap_Core_Coil+width_Coil,x_[1]+gap_Core_Coil+height_Coil,0,c_Coil};
p_Coil_p2_L_pos_4=newp; Point(newp) = {x_[0]+gap_Core_Coil+width_Coil,x_[1]+gap_Core_Coil,0,c_Coil};
l_Coil_p2_L_pos[]={};
l_Coil_p2_L_pos[]+=newl; Line(newl) = {p_Coil_p2_L_pos_1,p_Coil_p2_L_pos_2};
l_Coil_p2_L_pos[]+=newl; Line(newl) = {p_Coil_p2_L_pos_2,p_Coil_p2_L_pos_3};
l_Coil_p2_L_pos[]+=newl; Line(newl) = {p_Coil_p2_L_pos_3,p_Coil_p2_L_pos_4};
l_Coil_p2_L_pos[]+=newl; Line(newl) = {p_Coil_p2_L_pos_4,p_Coil_p2_L_pos_1};
ll_Coil_p2_L_pos=newll; Curve Loop(newll) = {l_Coil_p2_L_pos[]};
s_Coil_p2_L_pos=news; Plane Surface(news) = {ll_Coil_p2_L_pos};
Physical Surface("COIL_P2_L_POS", COIL_P2_L_POS) = {s_Coil_p2_L_pos};

// coil PHASE 3, HIGH, MIN
x_[]=Point{p_Leg_4_14};
p_Coil_p3_H_min_1=newp; Point(newp) = {x_[0]-gap_Core_Coil-width_Coil,x_[1]-gap_Core_Coil-height_Coil,0,c_Coil};
p_Coil_p3_H_min_2=newp; Point(newp) = {x_[0]-gap_Core_Coil-width_Coil,x_[1]-gap_Core_Coil,0,c_Coil};
p_Coil_p3_H_min_3=newp; Point(newp) = {x_[0]-gap_Core_Coil,x_[1]-gap_Core_Coil,0,c_Coil};
p_Coil_p3_H_min_4=newp; Point(newp) = {x_[0]-gap_Core_Coil,x_[1]-gap_Core_Coil-height_Coil,0,c_Coil};
l_Coil_p3_H_min[]={};
l_Coil_p3_H_min[]+=newl; Line(newl) = {p_Coil_p3_H_min_1,p_Coil_p3_H_min_2};
l_Coil_p3_H_min[]+=newl; Line(newl) = {p_Coil_p3_H_min_2,p_Coil_p3_H_min_3};
l_Coil_p3_H_min[]+=newl; Line(newl) = {p_Coil_p3_H_min_3,p_Coil_p3_H_min_4};
l_Coil_p3_H_min[]+=newl; Line(newl) = {p_Coil_p3_H_min_4,p_Coil_p3_H_min_1};
ll_Coil_p3_H_min=newll; Curve Loop(newll) = {l_Coil_p3_H_min[]};
s_Coil_p3_H_min=news; Plane Surface(news) = {ll_Coil_p3_H_min};
Physical Surface("COIL_P3_H_MIN", COIL_P3_H_MIN) = {s_Coil_p3_H_min};

// coil PHASE 3, LOW, MIN
x_[]=Point{p_Leg_4_13};
p_Coil_p3_L_min_1=newp; Point(newp) = {x_[0]-gap_Core_Coil-width_Coil,x_[1]+gap_Core_Coil,0,c_Coil};
p_Coil_p3_L_min_2=newp; Point(newp) = {x_[0]-gap_Core_Coil-width_Coil,x_[1]+gap_Core_Coil+height_Coil,0,c_Coil};
p_Coil_p3_L_min_3=newp; Point(newp) = {x_[0]-gap_Core_Coil,x_[1]+gap_Core_Coil+height_Coil,0,c_Coil};
p_Coil_p3_L_min_4=newp; Point(newp) = {x_[0]-gap_Core_Coil,x_[1]+gap_Core_Coil,0,c_Coil};
l_Coil_p3_L_min[]={};
l_Coil_p3_L_min[]+=newl; Line(newl) = {p_Coil_p3_L_min_1,p_Coil_p3_L_min_2};
l_Coil_p3_L_min[]+=newl; Line(newl) = {p_Coil_p3_L_min_2,p_Coil_p3_L_min_3};
l_Coil_p3_L_min[]+=newl; Line(newl) = {p_Coil_p3_L_min_3,p_Coil_p3_L_min_4};
l_Coil_p3_L_min[]+=newl; Line(newl) = {p_Coil_p3_L_min_4,p_Coil_p3_L_min_1};
ll_Coil_p3_L_min=newll; Curve Loop(newll) = {l_Coil_p3_L_min[]};
s_Coil_p3_L_min=news; Plane Surface(news) = {ll_Coil_p3_L_min};
Physical Surface("COIL_P3_L_MIN", COIL_P3_L_MIN) = {s_Coil_p3_L_min};

// coil PHASE 3, HIGH, POS
x_[]=Point{p_Leg_4_16};
p_Coil_p3_H_pos_1=newp; Point(newp) = {x_[0]+gap_Core_Coil,x_[1]-gap_Core_Coil-height_Coil,0,c_Coil};
p_Coil_p3_H_pos_2=newp; Point(newp) = {x_[0]+gap_Core_Coil,x_[1]-gap_Core_Coil,0,c_Coil};
p_Coil_p3_H_pos_3=newp; Point(newp) = {x_[0]+gap_Core_Coil+width_Coil,x_[1]-gap_Core_Coil,0,c_Coil};
p_Coil_p3_H_pos_4=newp; Point(newp) = {x_[0]+gap_Core_Coil+width_Coil,x_[1]-gap_Core_Coil-height_Coil,0,c_Coil};
l_Coil_p3_H_pos[]={};
l_Coil_p3_H_pos[]+=newl; Line(newl) = {p_Coil_p3_H_pos_1,p_Coil_p3_H_pos_2};
l_Coil_p3_H_pos[]+=newl; Line(newl) = {p_Coil_p3_H_pos_2,p_Coil_p3_H_pos_3};
l_Coil_p3_H_pos[]+=newl; Line(newl) = {p_Coil_p3_H_pos_3,p_Coil_p3_H_pos_4};
l_Coil_p3_H_pos[]+=newl; Line(newl) = {p_Coil_p3_H_pos_4,p_Coil_p3_H_pos_1};
ll_Coil_p3_H_pos=newll; Curve Loop(newll) = {l_Coil_p3_H_pos[]};
s_Coil_p3_H_pos=news; Plane Surface(news) = {ll_Coil_p3_H_pos};
Physical Surface("COIL_P3_H_POS", COIL_P3_H_POS) = {s_Coil_p3_H_pos};

// coil PHASE 3, LOW, POS
x_[]=Point{p_Leg_4_15};
p_Coil_p3_L_pos_1=newp; Point(newp) = {x_[0]+gap_Core_Coil,x_[1]+gap_Core_Coil,0,c_Coil};
p_Coil_p3_L_pos_2=newp; Point(newp) = {x_[0]+gap_Core_Coil,x_[1]+gap_Core_Coil+height_Coil,0,c_Coil};
p_Coil_p3_L_pos_3=newp; Point(newp) = {x_[0]+gap_Core_Coil+width_Coil,x_[1]+gap_Core_Coil+height_Coil,0,c_Coil};
p_Coil_p3_L_pos_4=newp; Point(newp) = {x_[0]+gap_Core_Coil+width_Coil,x_[1]+gap_Core_Coil,0,c_Coil};
l_Coil_p3_L_pos[]={};
l_Coil_p3_L_pos[]+=newl; Line(newl) = {p_Coil_p3_L_pos_1,p_Coil_p3_L_pos_2};
l_Coil_p3_L_pos[]+=newl; Line(newl) = {p_Coil_p3_L_pos_2,p_Coil_p3_L_pos_3};
l_Coil_p3_L_pos[]+=newl; Line(newl) = {p_Coil_p3_L_pos_3,p_Coil_p3_L_pos_4};
l_Coil_p3_L_pos[]+=newl; Line(newl) = {p_Coil_p3_L_pos_4,p_Coil_p3_L_pos_1};
ll_Coil_p3_L_pos=newll; Curve Loop(newll) = {l_Coil_p3_L_pos[]};
s_Coil_p3_L_pos=news; Plane Surface(news) = {ll_Coil_p3_L_pos};
Physical Surface("COIL_P3_L_POS", COIL_P3_L_POS) = {s_Coil_p3_L_pos};


//-------------------------------------------------------------
// AIR WINDOW & AIR EXT FOR 3-PHASE TRANSFORMER
//-------------------------------------------------------------

// AIR WINDOW 1
s_Air_Window_1=news; Plane Surface(news) = {ll_Core_In_1,ll_Coil_p1_L_min,ll_Coil_p1_H_min};
Physical Surface("AIR_WINDOW_1", AIR_WINDOW_1) = {s_Air_Window_1};

// AIR WINDOW 2
s_Air_Window_2=news; Plane Surface(news) = {ll_Core_In_2,ll_Coil_p1_L_pos,ll_Coil_p1_H_pos,ll_Coil_p2_H_min,ll_Coil_p2_L_min};
Physical Surface("AIR_WINDOW_2", AIR_WINDOW_2) = {s_Air_Window_2};

// AIR WINDOW 3
s_Air_Window_3=news; Plane Surface(news) = {ll_Core_In_3,ll_Coil_p2_H_pos,ll_Coil_p2_L_pos,ll_Coil_p3_H_min,ll_Coil_p3_L_min};
Physical Surface("AIR_WINDOW_3", AIR_WINDOW_3) = {s_Air_Window_3};

// AIR WINDOW 4
s_Air_Window_4=news; Plane Surface(news) = {ll_Core_In_4,ll_Coil_p3_H_pos,ll_Coil_p3_L_pos};
Physical Surface("AIR_WINDOW_4", AIR_WINDOW_4) = {s_Air_Window_4};

// AIR EXT
// For right side
x_[] = Point{p_Leg_5_19};
p_Air_Ext_R_0 = newp; Point(newp) = {x_[0] + gap_Core_Box_X, x_[1] - gap_Core_Box_Y + height_Core_Leg + height_Window/2., 0, c_Box};
p_Air_Ext_R_1 = newp; Point(newp) = {x_[0] + gap_Core_Box_X, x_[1] + gap_Core_Box_Y + height_Core_Leg + height_Window/2., 0, c_Box};

// For left side
x_[] = Point{p_Leg_1_1};
p_Air_Ext_L_0 = newp; Point(newp) = {x_[0] - gap_Core_Box_X, x_[1] - gap_Core_Box_Y + height_Core_Leg + height_Window/2., 0, c_Box};
p_Air_Ext_L_1 = newp; Point(newp) = {x_[0] - gap_Core_Box_X, x_[1] + gap_Core_Box_Y + height_Core_Leg + height_Window/2., 0, c_Box};

l_Air_Ext[] = {};
l_Air_Ext[] += newl; Line(newl) = {p_Air_Ext_L_0, p_Air_Ext_L_1};
l_Air_Ext[] += newl; Line(newl) = {p_Air_Ext_L_1, p_Air_Ext_R_1};
l_Air_Ext[] += newl; Line(newl) = {p_Air_Ext_R_1, p_Air_Ext_R_0};
l_Air_Ext[] += newl; Line(newl) = {p_Air_Ext_R_0, p_Air_Ext_L_0};

ll_Air_Ext = newll; Curve Loop(newll) = {l_Air_Ext[]};
s_Air_Ext = news; Plane Surface(news) = {ll_Air_Ext,ll_Core_In_1,ll_Core_In_2,ll_Core_In_3,ll_Core_In_4,ll_Core_Out[]};

Physical Surface("AIR_EXT", AIR_EXT) = {s_Air_Ext};
Physical Curve("SUR_AIR_EXT", SUR_AIR_EXT) = {l_Air_Ext[]};

//+
Show "*";
//+
Coherence;
//+
Coherence;
//+
Coherence;
//+
Coherence;
//+
Coherence;
//+
Coherence;
//+
Coherence;
//+
Show "*";
