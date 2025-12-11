Include "transfo_common.pro";
// meeste linkse been
p_Leg_1_1=newp; Point(newp) = {-width_Core_Leg/2-2*width_Core_Leg-4*width_Window,0,0,c_Core};
p_Leg_1_3=newp; Point(newp) = {-width_Core_Leg/2-1*width_Core_Leg-4*width_Window,0,0,c_Core};

p_Leg_1_2=newp; Point(newp) = {-width_Core_Leg/2-2*width_Core_Leg-4*width_Window,height_Core/2,0,c_Core};
p_Leg_1_4=newp; Point(newp) = {-width_Core_Leg/2-1*width_Core_Leg-4*width_Window,height_Core/2-width_Core_Top,0,c_Core};

 // tweede been van links
p_Leg_2_5=newp; Point(newp) = {-width_Core_Leg/2-1*width_Core_Leg-2*width_Window,0,0,c_Core};
p_Leg_2_7=newp; Point(newp) = {-width_Core_Leg/2-2*width_Window,0,0,c_Core};

p_Leg_2_6=newp; Point(newp) = {-width_Core_Leg/2-1*width_Core_Leg-2*width_Window,height_Core/2-width_Core_Top,0,c_Core};
p_Leg_2_8=newp; Point(newp) = {-width_Core_Leg/2-2*width_Window,height_Core/2-width_Core_Top,0,c_Core};

// middelste been
p_Leg_3_9=newp; Point(newp) = {-width_Core_Leg/2,0,0,c_Core};
p_Leg_3_11=newp; Point(newp) = {width_Core_Leg/2,0,0,c_Core};

p_Leg_3_10=newp; Point(newp) = {-width_Core_Leg/2,height_Core/2-width_Core_Top,0,c_Core};
p_Leg_3_12=newp; Point(newp) = {width_Core_Leg/2,height_Core/2-width_Core_Top,0,c_Core};

// tweede been van rechts
p_Leg_4_13=newp; Point(newp) = {width_Core_Leg/2+2*width_Window,0,0,c_Core};
p_Leg_4_15=newp; Point(newp) = {width_Core_Leg/2+1*width_Core_Leg+2*width_Window,0,0,c_Core};

p_Leg_4_14=newp; Point(newp) = {width_Core_Leg/2+2*width_Window,height_Core/2-width_Core_Top,0,c_Core};
p_Leg_4_16=newp; Point(newp) = {width_Core_Leg/2+1*width_Core_Leg+2*width_Window,height_Core/2-width_Core_Top,0,c_Core};

// meest rechtse been
p_Leg_5_17=newp; Point(newp) = {width_Core_Leg/2+1*width_Core_Leg+4*width_Window,0,0,c_Core};
p_Leg_5_19=newp; Point(newp) = {width_Core_Leg/2+2*width_Core_Leg+4*width_Window,0,0,c_Core};

p_Leg_5_18=newp; Point(newp) = {width_Core_Leg/2+1*width_Core_Leg+4*width_Window,height_Core/2-width_Core_Top,0,c_Core};

p_Leg_5_20=newp; Point(newp) = {width_Core_Leg/2+2*width_Core_Leg+4*width_Window,height_Core/2,0,c_Core};

l_Core_In_1[]={};

l_Core_In_1[]+=newl; Line(newl) = {p_Leg_1_3,p_Leg_1_4};
l_Core_In_1[]+=newl; Line(newl) = {p_Leg_1_4,p_Leg_2_6};
l_Core_In_1[]+=newl; Line(newl) = {p_Leg_2_6,p_Leg_2_5};

l_Core_In_2[]={};
l_Core_In_2[]+=newl; Line(newl) = {p_Leg_2_7,p_Leg_2_8};
l_Core_In_2[]+=newl; Line(newl) = {p_Leg_2_8,p_Leg_3_10};
l_Core_In_2[]+=newl; Line(newl) = {p_Leg_3_10,p_Leg_3_9};

l_Core_In_3[]={};
l_Core_In_3[]+=newl; Line(newl) = {p_Leg_3_11,p_Leg_3_12};
l_Core_In_3[]+=newl; Line(newl) = {p_Leg_3_12,p_Leg_4_14};
l_Core_In_3[]+=newl; Line(newl) = {p_Leg_4_14,p_Leg_4_13};

l_Core_In_4[]={};
l_Core_In_4[]+=newl; Line(newl) = {p_Leg_4_15,p_Leg_4_16};
l_Core_In_4[]+=newl; Line(newl) = {p_Leg_4_16,p_Leg_5_18};
l_Core_In_4[]+=newl; Line(newl) = {p_Leg_5_18,p_Leg_5_17};

l_Core_Out[]={};
l_Core_Out[]+=newl; Line(newl) = {p_Leg_5_19,p_Leg_5_20};
l_Core_Out[]+=newl; Line(newl) = {p_Leg_5_20,p_Leg_1_2};
l_Core_Out[]+=newl; Line(newl) = {p_Leg_1_2,p_Leg_1_1};

l_Core_Leg_1_Y0[]={};
l_Core_Leg_1_Y0[]+=newl; Line(newl) = {p_Leg_1_1,p_Leg_1_3};

l_Core_Leg_2_Y0[]={};
l_Core_Leg_2_Y0[]+=newl; Line(newl) = {p_Leg_2_5,p_Leg_2_7};

l_Core_Leg_3_Y0[]={};
l_Core_Leg_3_Y0[]+=newl; Line(newl) = {p_Leg_3_9,p_Leg_3_11};

l_Core_Leg_4_Y0[]={};
l_Core_Leg_4_Y0[]+=newl; Line(newl) = {p_Leg_4_13,p_Leg_4_15};

l_Core_Leg_5_Y0[]={};
l_Core_Leg_5_Y0[]+=newl; Line(newl) = {p_Leg_5_17,p_Leg_5_19};


// maak de oppervlakte van de kern
// 1st lijnen toevoegen aan curve loop
// 2nd oppervlakte maken
ll_Core=newll; Curve Loop(newll) = {l_Core_Leg_1_Y0[], l_Core_In_1[], l_Core_Leg_2_Y0[], l_Core_In_2[], l_Core_Leg_3_Y0[], l_Core_In_3[], l_Core_Leg_4_Y0[], l_Core_In_4[], l_Core_Leg_5_Y0[], l_Core_Out[]};
s_Core=news; Plane Surface(news) = {ll_Core};

Physical Surface("CORE", CORE) = {s_Core};


// Coil middenste been, low side, +

x_[]=Point{p_Leg_3_11};

p_Coil_p2_L_pos_int_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_p2_L,0,0,c_Coil_p2_L};
p_Coil_p2_L_pos_ext_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_p2_L+width_Coil_p2_L,0,0,c_Coil_p2_L};

p_Coil_p2_L_pos_int_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_p2_L,height_Coil_p2_L/2,0,c_Coil_p2_L};
p_Coil_p2_L_pos_ext_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_p2_L+width_Coil_p2_L,height_Coil_p2_L/2,0,c_Coil_p2_L};

l_Coil_p2_L_pos[]={};
// lijn links
l_Coil_p2_L_pos[]+=newl; Line(newl) = {p_Coil_p2_L_pos_int_1,p_Coil_p2_L_pos_int_0};
// lijn boven
l_Coil_p2_L_pos[]+=newl; Line(newl) = {p_Coil_p2_L_pos_int_0,p_Coil_p2_L_pos_ext_0};
// lijn rechts
l_Coil_p2_L_pos[]+=newl; Line(newl) = {p_Coil_p2_L_pos_ext_0,p_Coil_p2_L_pos_ext_1};
l_Coil_p2_L_pos_Y0[]={};
// lijn onder
l_Coil_p2_L_pos_Y0[]+=newl; Line(newl) = {p_Coil_p2_L_pos_ext_1,p_Coil_p2_L_pos_int_1};


// maak de oppervlakte van de coil
ll_Coil_p2_L_pos=newll; Curve Loop(newll) = {l_Coil_p2_L_pos[],l_Coil_p2_L_pos_Y0};
s_Coil_p2_L_pos=news; Plane Surface(news) = {ll_Coil_p2_L_pos};
Physical Surface("COIL_P2_L_POS", COIL_P2_L_POS) = {s_Coil_p2_L_pos};


// Coil middenste been, high side, +

x_[]=Point{p_Coil_p2_L_pos_ext_0};
p_Coil_p2_H_pos_int_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_p2_L,0,0,c_Coil_p2_L};
p_Coil_p2_H_pos_ext_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_p2_L+width_Coil_p2_L,0,0,c_Coil_p2_L};

p_Coil_p2_H_pos_int_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_p2_L,height_Coil_p2_L/2,0,c_Coil_p2_L};
p_Coil_p2_H_pos_ext_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_p2_L+width_Coil_p2_L,height_Coil_p2_L/2,0,c_Coil_p2_L};

l_Coil_p2_H_pos[]={};
// lijn links
l_Coil_p2_H_pos[]+=newl; Line(newl) = {p_Coil_p2_H_pos_int_1,p_Coil_p2_H_pos_int_0};
// lijn boven
l_Coil_p2_H_pos[]+=newl; Line(newl) = {p_Coil_p2_H_pos_int_0,p_Coil_p2_H_pos_ext_0};
// lijn rechts
l_Coil_p2_H_pos[]+=newl; Line(newl) = {p_Coil_p2_H_pos_ext_0,p_Coil_p2_H_pos_ext_1};

// lijn onder
l_Coil_p2_H_pos_Y0[]={};
l_Coil_p2_H_pos_Y0[]+=newl; Line(newl) = {p_Coil_p2_H_pos_ext_1,p_Coil_p2_H_pos_int_1};

// maak de oppervlakte van de coil
ll_Coil_p2_H_pos=newll; Curve Loop(newll) = {l_Coil_p2_H_pos[], l_Coil_p2_H_pos_Y0[]};
s_Coil_p2_H_pos=news; Plane Surface(news) = {ll_Coil_p2_H_pos};
Physical Surface("COIL_P2_H_POS", COIL_P2_H_POS) = {s_Coil_p2_H_pos};

// Coil middenste been, low side, -
x_[]=Point{p_Leg_3_9};

p_Coil_p2_L_neg_int_0=newp; Point(newp) = {x_[0]-gap_Core_Coil_p2_L,0,0,c_Coil_p2_L};
p_Coil_p2_L_neg_ext_0=newp; Point(newp) = {x_[0]-gap_Core_Coil_p2_L-width_Coil_p2_L,0,0,c_Coil_p2_L};

p_Coil_p2_L_neg_int_1=newp; Point(newp) = {x_[0]-gap_Core_Coil_p2_L,height_Coil_p2_L/2,0,c_Coil_p2_L};
p_Coil_p2_L_neg_ext_1=newp; Point(newp) = {x_[0]-gap_Core_Coil_p2_L-width_Coil_p2_L,height_Coil_p2_L/2,0,c_Coil_p2_L};  

l_Coil_p2_L_neg[]={};
// lijn links
l_Coil_p2_L_neg[]+=newl; Line(newl) = {p_Coil_p2_L_neg_ext_1,p_Coil_p2_L_neg_ext_0};
// lijn boven
l_Coil_p2_L_neg[]+=newl; Line(newl) = {p_Coil_p2_L_neg_ext_0,p_Coil_p2_L_neg_int_0};
// lijn rechts
l_Coil_p2_L_neg[]+=newl; Line(newl) = {p_Coil_p2_L_neg_int_0,p_Coil_p2_L_neg_int_1};
// lijn onder
l_Coil_p2_L_neg_Y0[]={};
l_Coil_p2_L_neg_Y0[]+=newl; Line(newl) = {p_Coil_p2_L_neg_int_1,p_Coil_p2_L_neg_ext_1};

// maak de oppervlakte van de coil
ll_Coil_p2_L_neg=newll; Curve Loop(newll) = {l_Coil_p2_L_neg[], l_Coil_p2_L_neg_Y0[]};
s_Coil_p2_L_neg=news; Plane Surface(news) = {ll_Coil_p2_L_neg};
Physical Surface("COIL_P2_L_NEG", COIL_P2_L_NEG) = {s_Coil_p2_L_neg};

// Coil middenste been, high side, -
x_[]=Point{p_Coil_p2_L_neg_ext_0};

p_Coil_p2_H_neg_int_0=newp; Point(newp) = {x_[0]-gap_Core_Coil_p2_L,0,0,c_Coil_p2_L};
p_Coil_p2_H_neg_ext_0=newp; Point(newp) = {x_[0]-gap_Core_Coil_p2_L-width_Coil_p2_L,0,0,c_Coil_p2_L};
p_Coil_p2_H_neg_int_1=newp; Point(newp) = {x_[0]-gap_Core_Coil_p2_L,height_Coil_p2_L/2,0,c_Coil_p2_L};
p_Coil_p2_H_neg_ext_1=newp; Point(newp) = {x_[0]-gap_Core_Coil_p2_L-width_Coil_p2_L,height_Coil_p2_L/2,0,c_Coil_p2_L};

l_Coil_p2_H_neg[]={};
// lijn links
l_Coil_p2_H_neg[]+=newl; Line(newl) = {p_Coil_p2_H_neg_ext_1,p_Coil_p2_H_neg_ext_0};
// lijn boven
l_Coil_p2_H_neg[]+=newl; Line(newl) = {p_Coil_p2_H_neg_ext_0,p_Coil_p2_H_neg_int_0};
// lijn rechts
l_Coil_p2_H_neg[]+=newl; Line(newl) = {p_Coil_p2_H_neg_int_0,p_Coil_p2_H_neg_int_1};
// lijn onder
l_Coil_p2_H_neg_Y0[]={};
l_Coil_p2_H_neg_Y0[]+=newl; Line(newl) = {p_Coil_p2_H_neg_int_1,p_Coil_p2_H_neg_ext_1};


// maak de oppervlakte van de coil
ll_Coil_p2_H_neg=newll; Curve Loop(newll) = {l_Coil_p2_H_neg[], l_Coil_p2_H_neg_Y0[]};
s_Coil_p2_H_neg=news; Plane Surface(news) = {ll_Coil_p2_H_neg};
Physical Surface("COIL_P2_H_NEG", COIL_P2_H_NEG) = {s_Coil_p2_H_neg};


// --- Coils for LEG 2 (both low/high, + and -) ---
// LEG 2, low side, +
x_[]=Point{p_Leg_2_7};
p_Coil_p1_L_pos_int_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_p1_L,0,0,c_Coil_p1_L};
p_Coil_p1_L_pos_ext_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_p1_L+width_Coil_p1_L,0,0,c_Coil_p1_L};
p_Coil_p1_L_pos_int_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_p1_L,height_Coil_p1_L/2,0,c_Coil_p1_L};
p_Coil_p1_L_pos_ext_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_p1_L+width_Coil_p1_L,height_Coil_p1_L/2,0,c_Coil_p1_L};

l_Coil_p1_L_pos[]={};
l_Coil_p1_L_pos[]+=newl; Line(newl) = {p_Coil_p1_L_pos_int_1,p_Coil_p1_L_pos_int_0};
l_Coil_p1_L_pos[]+=newl; Line(newl) = {p_Coil_p1_L_pos_ext_0,p_Coil_p1_L_pos_ext_1};
l_Coil_p1_L_pos[]+=newl; Line(newl) = {p_Coil_p1_L_pos_ext_1,p_Coil_p1_L_pos_int_1};
l_Coil_p1_L_pos_Y0[]={};
l_Coil_p1_L_pos_Y0[]+=newl; Line(newl) = {p_Coil_p1_L_pos_int_0,p_Coil_p1_L_pos_ext_0};

ll_Coil_p1_L_pos=newll; Curve Loop(newll) = {l_Coil_p1_L_pos[], l_Coil_p1_L_pos_Y0[]};
s_Coil_p1_L_pos=news; Plane Surface(news) = {ll_Coil_p1_L_pos};
Physical Surface("COIL_P1_L_POS", COIL_P1_L_POS) = {s_Coil_p1_L_pos};

// LEG 2, high side, +
x_[]=Point{p_Coil_p1_L_pos_ext_0};
p_Coil_p1_H_pos_int_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_p1_L,0,0,c_Coil_p1_H};
p_Coil_p1_H_pos_ext_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_p1_L+width_Coil_p1_L,0,0,c_Coil_p1_H};
p_Coil_p1_H_pos_int_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_p1_L,height_Coil_p1_L/2,0,c_Coil_p1_H};
p_Coil_p1_H_pos_ext_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_p1_L+width_Coil_p1_L,height_Coil_p1_L/2,0,c_Coil_p1_H};
l_Coil_p1_H_pos[]={};
l_Coil_p1_H_pos[]+=newl; Line(newl) = {p_Coil_p1_H_pos_int_1,p_Coil_p1_H_pos_int_0};
l_Coil_p1_H_pos[]+=newl; Line(newl) = {p_Coil_p1_H_pos_ext_0,p_Coil_p1_H_pos_ext_1};
l_Coil_p1_H_pos[]+=newl; Line(newl) = {p_Coil_p1_H_pos_ext_1,p_Coil_p1_H_pos_int_1};
l_Coil_p1_H_pos_Y0[]={};
l_Coil_p1_H_pos_Y0[]+=newl; Line(newl) = {p_Coil_p1_H_pos_int_0,p_Coil_p1_H_pos_ext_0};

ll_Coil_p1_H_pos=newll; Curve Loop(newll) = {l_Coil_p1_H_pos[], l_Coil_p1_H_pos_Y0[]};
s_Coil_p1_H_pos=news; Plane Surface(news) = {ll_Coil_p1_H_pos};
Physical Surface("COIL_P1_H_POS", COIL_P1_H_POS) = {s_Coil_p1_H_pos};

// LEG 2, low side, -
x_[]=Point{p_Leg_2_5};
p_Coil_p1_L_neg_int_0=newp; Point(newp) = {x_[0]-gap_Core_Coil_p1_L,0,0,c_Coil_p1_L};
p_Coil_p1_L_neg_ext_0=newp; Point(newp) = {x_[0]-gap_Core_Coil_p1_L-width_Coil_p1_L,0,0,c_Coil_p1_L};
p_Coil_p1_L_neg_int_1=newp; Point(newp) = {x_[0]-gap_Core_Coil_p1_L,height_Coil_p1_L/2,0,c_Coil_p1_L};
p_Coil_p1_L_neg_ext_1=newp; Point(newp) = {x_[0]-gap_Core_Coil_p1_L-width_Coil_p1_L,height_Coil_p1_L/2,0,c_Coil_p1_L};

l_Coil_p1_L_neg[]={};

// lijn rechts
l_Coil_p1_L_neg[]+=newl; Line(newl) = {p_Coil_p1_L_neg_int_0,p_Coil_p1_L_neg_int_1};
// lijn boven
l_Coil_p1_L_neg[]+=newl; Line(newl) = {p_Coil_p1_L_neg_int_1,p_Coil_p1_L_neg_ext_1};
// lijn links
l_Coil_p1_L_neg[]+=newl; Line(newl) = {p_Coil_p1_L_neg_ext_1,p_Coil_p1_L_neg_ext_0};
// lijn onder
l_Coil_p1_L_neg_Y0[]={};
l_Coil_p1_L_neg_Y0[]+=newl; Line(newl) = {p_Coil_p1_L_neg_ext_0,p_Coil_p1_L_neg_int_0};

// maak de oppervlakte van the coil
ll_Coil_p1_L_neg=newll; Curve Loop(newll) = {l_Coil_p1_L_neg[],l_Coil_p1_L_neg_Y0[]};
s_Coil_p1_L_neg=news; Plane Surface(news) = {ll_Coil_p1_L_neg};
Physical Surface("COIL_P1_L_NEG", COIL_P1_L_NEG) = {s_Coil_p1_L_neg};

// LEG 2, high side, -
x_[]=Point{p_Coil_p1_L_neg_ext_0};
p_Coil_p1_H_neg_int_0=newp; Point(newp) = {x_[0]-gap_Core_Coil_p1_L,0,0,c_Coil_p1_L};
p_Coil_p1_H_neg_ext_0=newp; Point(newp) = {x_[0]-gap_Core_Coil_p1_L-width_Coil_p1_L,0,0,c_Coil_p1_L};
p_Coil_p1_H_neg_int_1=newp; Point(newp) = {x_[0]-gap_Core_Coil_p1_L,height_Coil_p1_L/2,0,c_Coil_p1_L};
p_Coil_p1_H_neg_ext_1=newp; Point(newp) = {x_[0]-gap_Core_Coil_p1_L-width_Coil_p1_L,height_Coil_p1_L/2,0,c_Coil_p1_L};

l_Coil_p1_H_neg[]={};
l_Coil_p1_H_neg[]+=newl; Line(newl) = {p_Coil_p1_H_neg_int_0,p_Coil_p1_H_neg_int_1};
l_Coil_p1_H_neg[]+=newl; Line(newl) = {p_Coil_p1_H_neg_int_1,p_Coil_p1_H_neg_ext_1};
l_Coil_p1_H_neg[]+=newl; Line(newl) = {p_Coil_p1_H_neg_ext_1,p_Coil_p1_H_neg_ext_0};

l_Coil_p1_H_neg_Y0[]={};
l_Coil_p1_H_neg_Y0[]+=newl; Line(newl) = {p_Coil_p1_H_neg_ext_0,p_Coil_p1_H_neg_int_0};

ll_Coil_p1_H_neg=newll; Curve Loop(newll) = {l_Coil_p1_H_neg[],l_Coil_p1_H_neg_Y0[]};
s_Coil_p1_H_neg=news; Plane Surface(news) = {ll_Coil_p1_H_neg};
Physical Surface("COIL_P1_H_NEG", COIL_P1_H_NEG) = {s_Coil_p1_H_neg};

// --- Coils for LEG 4 (both low/high, + and -) ---
// LEG 4, low side, +
x_[]=Point{p_Leg_4_15};
p_Coil_p3_L_pos_int_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_p3_L,0,0,c_Coil_p3_L};
p_Coil_p3_L_pos_ext_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_p3_L+width_Coil_p3_L,0,0,c_Coil_p3_L};
p_Coil_p3_L_pos_int_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_p3_L,height_Coil_p3_L/2,0,c_Coil_p3_L};
p_Coil_p3_L_pos_ext_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_p3_L+width_Coil_p3_L,height_Coil_p3_L/2,0,c_Coil_p3_L};

l_Coil_p3_L_pos[]={};
l_Coil_p3_L_pos[]+=newl; Line(newl) = {p_Coil_p3_L_pos_ext_0,p_Coil_p3_L_pos_ext_1};
l_Coil_p3_L_pos[]+=newl; Line(newl) = {p_Coil_p3_L_pos_ext_1,p_Coil_p3_L_pos_int_1};
l_Coil_p3_L_pos[]+=newl; Line(newl) = {p_Coil_p3_L_pos_int_1,p_Coil_p3_L_pos_int_0};

l_Coil_p3_L_pos_Y0[]={};
l_Coil_p3_L_pos_Y0[]+=newl; Line(newl) = {p_Coil_p3_L_pos_int_0,p_Coil_p3_L_pos_ext_0};

ll_Coil_p3_L_pos=newll; Curve Loop(newll) = {l_Coil_p3_L_pos[],l_Coil_p3_L_pos_Y0[]};
s_Coil_p3_L_pos=news; Plane Surface(news) = {ll_Coil_p3_L_pos};
Physical Surface("COIL_P3_L_POS", COIL_P3_L_POS) = {s_Coil_p3_L_pos};

// LEG 4, high side, +
x_[]=Point{p_Coil_p3_L_pos_ext_0};
p_Coil_p3_H_pos_int_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_p3_L,0,0,c_Coil_p3_L};
p_Coil_p3_H_pos_ext_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_p3_L+width_Coil_p3_L,0,0,c_Coil_p3_L};
p_Coil_p3_H_pos_int_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_p3_L,height_Coil_p3_L/2,0,c_Coil_p3_L};
p_Coil_p3_H_pos_ext_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_p3_L+width_Coil_p3_L,height_Coil_p3_L/2,0,c_Coil_p3_L};

l_Coil_p3_H_pos[]={};
l_Coil_p3_H_pos[]+=newl; Line(newl) = {p_Coil_p3_H_pos_ext_0,p_Coil_p3_H_pos_ext_1};
l_Coil_p3_H_pos[]+=newl; Line(newl) = {p_Coil_p3_H_pos_ext_1,p_Coil_p3_H_pos_int_1};
l_Coil_p3_H_pos[]+=newl; Line(newl) = {p_Coil_p3_H_pos_int_1,p_Coil_p3_H_pos_int_0};

l_Coil_p3_H_pos_Y0[]={};
l_Coil_p3_H_pos_Y0[]+=newl; Line(newl) = {p_Coil_p3_H_pos_int_0,p_Coil_p3_H_pos_ext_0};

ll_Coil_p3_H_pos=newll; Curve Loop(newll) = {l_Coil_p3_H_pos[],l_Coil_p3_H_pos_Y0[]};
s_Coil_p3_H_pos=news; Plane Surface(news) = {ll_Coil_p3_H_pos};
Physical Surface("COIL_P3_H_POS", COIL_P3_H_POS) = {s_Coil_p3_H_pos};

// LEG 4, low side, -
x_[]=Point{p_Leg_4_13};
p_Coil_p3_L_neg_int_0=newp; Point(newp) = {x_[0]-gap_Core_Coil_p3_L,0,0,c_Coil_p3_L};
p_Coil_p3_L_neg_ext_0=newp; Point(newp) = {x_[0]-gap_Core_Coil_p3_L-width_Coil_p3_L,0,0,c_Coil_p3_L};
p_Coil_p3_L_neg_int_1=newp; Point(newp) = {x_[0]-gap_Core_Coil_p3_L,height_Coil_p3_L/2,0,c_Coil_p3_L};
p_Coil_p3_L_neg_ext_1=newp; Point(newp) = {x_[0]-gap_Core_Coil_p3_L-width_Coil_p3_L,height_Coil_p3_L/2,0,c_Coil_p3_L};

l_Coil_p3_L_neg[]={};
l_Coil_p3_L_neg[]+=newl; Line(newl) = {p_Coil_p3_L_neg_int_0,p_Coil_p3_L_neg_int_1};
l_Coil_p3_L_neg[]+=newl; Line(newl) = {p_Coil_p3_L_neg_int_1,p_Coil_p3_L_neg_ext_1};
l_Coil_p3_L_neg[]+=newl; Line(newl) = {p_Coil_p3_L_neg_ext_1,p_Coil_p3_L_neg_ext_0};


l_Coil_p3_L_neg_Y0[]={};
l_Coil_p3_L_neg_Y0[]+=newl; Line(newl) = {p_Coil_p3_L_neg_ext_0,p_Coil_p3_L_neg_int_0};

ll_Coil_p3_L_neg=newll; Curve Loop(newll) = {l_Coil_p3_L_neg[],l_Coil_p3_L_neg_Y0[]};
s_Coil_p3_L_neg=news; Plane Surface(news) = {ll_Coil_p3_L_neg};
Physical Surface("COIL_P3_L_NEG", COIL_P3_L_NEG) = {s_Coil_p3_L_neg};

// LEG 4, high side, -
x_[]=Point{p_Coil_p3_L_neg_ext_0};
p_Coil_p3_H_neg_int_0=newp; Point(newp) = {x_[0]-gap_Core_Coil_p2_L,0,0,c_Coil_p2_L};
p_Coil_p3_H_neg_ext_0=newp; Point(newp) = {x_[0]-gap_Core_Coil_p2_L-width_Coil_p2_L,0,0,c_Coil_p2_L};
p_Coil_p3_H_neg_int_1=newp; Point(newp) = {x_[0]-gap_Core_Coil_p2_L,height_Coil_p2_L/2,0,c_Coil_p2_L};
p_Coil_p3_H_neg_ext_1=newp; Point(newp) = {x_[0]-gap_Core_Coil_p2_L-width_Coil_p2_L,height_Coil_p2_L/2,0,c_Coil_p2_L};

l_Coil_p3_H_neg[]={};
l_Coil_p3_H_neg[]+=newl; Line(newl) = {p_Coil_p3_H_neg_int_0,p_Coil_p3_H_neg_int_1};
l_Coil_p3_H_neg[]+=newl; Line(newl) = {p_Coil_p3_H_neg_int_1,p_Coil_p3_H_neg_ext_1};
l_Coil_p3_H_neg[]+=newl; Line(newl) = {p_Coil_p3_H_neg_ext_1,p_Coil_p3_H_neg_ext_0};

l_Coil_p3_H_neg_Y0[]={};
l_Coil_p3_H_neg_Y0[]+=newl; Line(newl) = {p_Coil_p3_H_neg_ext_0,p_Coil_p3_H_neg_int_0};

ll_Coil_p3_H_neg=newll; Curve Loop(newll) = {l_Coil_p3_H_neg[],l_Coil_p3_H_neg_Y0[]};
s_Coil_p3_H_neg=news; Plane Surface(news) = {ll_Coil_p3_H_neg};
Physical Surface("COIL_P3_H_NEG", COIL_P3_H_NEG) = {s_Coil_p3_H_neg};

//-------------------------------------------------------------
// AIR WINDOW & AIR EXT FOR 3-PHASE TRANSFORMER
//-------------------------------------------------------------

// AIR WINDOW 1
l_Air_Window_Y0_w1[] = {};
l_Air_Window_Y0_w1[] += newl; Line(newl) = {p_Leg_2_5,p_Coil_p1_L_neg_int_0};
l_Air_Window_Y0_w1[] += newl; Line(newl) = {p_Coil_p1_L_neg_ext_0,p_Coil_p1_H_neg_int_0};
l_Air_Window_Y0_w1[] += newl; Line(newl) = {p_Coil_p1_H_neg_ext_0,p_Leg_1_3};
ll_Air_Window_w1 = newll; Curve Loop(newll) = {l_Core_In_1[],l_Air_Window_Y0_w1[0],l_Coil_p1_L_neg[],l_Air_Window_Y0_w1[1],l_Coil_p1_H_neg[],l_Air_Window_Y0_w1[2]};
s_Air_Window_w1 = news; Plane Surface(news) = {ll_Air_Window_w1};
Physical Surface("AIR_WINDOW_W1", AIR_WINDOW_W1) = {s_Air_Window_w1};


// AIR WINDOW 2
l_Air_Window_Y0_w2[] = {};
l_Air_Window_Y0_w2[] += newl; Line(newl) = {p_Leg_2_7, p_Coil_p1_L_pos_int_0};
l_Air_Window_Y0_w2[] += newl; Line(newl) = {p_Coil_p1_L_pos_int_0, p_Coil_p1_L_pos_int_1};
l_Air_Window_Y0_w2[] += newl; Line(newl) = {p_Coil_p1_L_pos_int_1, p_Coil_p1_L_pos_ext_1};
l_Air_Window_Y0_w2[] += newl; Line(newl) = {p_Coil_p1_L_pos_ext_1, p_Coil_p1_L_pos_ext_0};
l_Air_Window_Y0_w2[] += newl; Line(newl) = {p_Coil_p1_L_pos_ext_0, p_Coil_p1_H_pos_int_0};
l_Air_Window_Y0_w2[] += newl; Line(newl) = {p_Coil_p1_H_pos_int_0, p_Coil_p1_H_pos_int_1};
l_Air_Window_Y0_w2[] += newl; Line(newl) = {p_Coil_p1_H_pos_int_1, p_Coil_p1_H_pos_ext_1};
l_Air_Window_Y0_w2[] += newl; Line(newl) = {p_Coil_p1_H_pos_ext_1, p_Coil_p1_H_pos_ext_0};
l_Air_Window_Y0_w2[] += newl; Line(newl) = {p_Coil_p1_H_pos_ext_0, p_Coil_p2_H_neg_ext_0};
l_Air_Window_Y0_w2[] += newl; Line(newl) = {p_Coil_p2_H_neg_ext_0, p_Coil_p2_H_neg_ext_1};
l_Air_Window_Y0_w2[] += newl; Line(newl) = {p_Coil_p2_H_neg_ext_1, p_Coil_p2_H_neg_int_1};
l_Air_Window_Y0_w2[] += newl; Line(newl) = {p_Coil_p2_H_neg_int_1, p_Coil_p2_H_neg_int_0};
l_Air_Window_Y0_w2[] += newl; Line(newl) = {p_Coil_p2_H_neg_int_0, p_Coil_p2_L_neg_ext_0};
l_Air_Window_Y0_w2[] += newl; Line(newl) = {p_Coil_p2_L_neg_ext_0, p_Coil_p2_L_neg_ext_1};
l_Air_Window_Y0_w2[] += newl; Line(newl) = {p_Coil_p2_L_neg_ext_1, p_Coil_p2_L_neg_int_1};
l_Air_Window_Y0_w2[] += newl; Line(newl) = {p_Coil_p2_L_neg_int_1, p_Coil_p2_L_neg_int_0};
l_Air_Window_Y0_w2[] += newl; Line(newl) = {p_Coil_p2_L_neg_int_0, p_Leg_3_9};
l_Air_Window_Y0_w2[] += newl; Line(newl) = {p_Leg_3_9, p_Leg_3_10};
l_Air_Window_Y0_w2[] += newl; Line(newl) = {p_Leg_3_10, p_Leg_2_8};
l_Air_Window_Y0_w2[] += newl; Line(newl) = {p_Leg_2_8, p_Leg_2_7};

ll_Air_Window_w2 = newll; Curve Loop(newll) = {l_Air_Window_Y0_w2[]};
s_Air_Window_w2 = news; Plane Surface(news) = {ll_Air_Window_w2};
Physical Surface("AIR_WINDOW_W2", AIR_WINDOW_W2) = {s_Air_Window_w2};


// AIR WINDOW 3
l_Air_Window_Y0_w3[] = {};
l_Air_Window_Y0_w3[] += newl; Line(newl) = {p_Leg_3_11, p_Coil_p2_L_pos_int_0};
l_Air_Window_Y0_w3[] += newl; Line(newl) = {p_Coil_p2_L_pos_int_0, p_Coil_p2_L_pos_int_1};
l_Air_Window_Y0_w3[] += newl; Line(newl) = {p_Coil_p2_L_pos_int_1, p_Coil_p2_L_pos_ext_1};
l_Air_Window_Y0_w3[] += newl; Line(newl) = {p_Coil_p2_L_pos_ext_1, p_Coil_p2_L_pos_ext_0};
l_Air_Window_Y0_w3[] += newl; Line(newl) = {p_Coil_p2_L_pos_ext_0, p_Coil_p2_H_pos_int_0};
l_Air_Window_Y0_w3[] += newl; Line(newl) = {p_Coil_p2_H_pos_int_0, p_Coil_p2_H_pos_int_1};
l_Air_Window_Y0_w3[] += newl; Line(newl) = {p_Coil_p2_H_pos_int_1, p_Coil_p2_H_pos_ext_1};
l_Air_Window_Y0_w3[] += newl; Line(newl) = {p_Coil_p2_H_pos_ext_1, p_Coil_p2_H_pos_ext_0};
l_Air_Window_Y0_w3[] += newl; Line(newl) = {p_Coil_p2_H_pos_ext_0, p_Coil_p3_H_neg_ext_0};
l_Air_Window_Y0_w3[] += newl; Line(newl) = {p_Coil_p3_H_neg_ext_0, p_Coil_p3_H_neg_ext_1};
l_Air_Window_Y0_w3[] += newl; Line(newl) = {p_Coil_p3_H_neg_ext_1, p_Coil_p3_H_neg_int_1};
l_Air_Window_Y0_w3[] += newl; Line(newl) = {p_Coil_p3_H_neg_int_1, p_Coil_p3_H_neg_int_0};

l_Air_Window_Y0_w3[] += newl; Line(newl) = {p_Coil_p3_H_neg_int_0, p_Coil_p3_L_neg_ext_0};
l_Air_Window_Y0_w3[] += newl; Line(newl) = {p_Coil_p3_L_neg_ext_0, p_Coil_p3_L_neg_ext_1};
l_Air_Window_Y0_w3[] += newl; Line(newl) = {p_Coil_p3_L_neg_ext_1, p_Coil_p3_L_neg_int_1};
l_Air_Window_Y0_w3[] += newl; Line(newl) = {p_Coil_p3_L_neg_int_1, p_Coil_p3_L_neg_int_0};
l_Air_Window_Y0_w3[] += newl; Line(newl) = {p_Coil_p3_L_neg_int_0, p_Leg_4_13};

l_Air_Window_Y0_w3[] += newl; Line(newl) = {p_Leg_4_13, p_Leg_4_14};

l_Air_Window_Y0_w3[] += newl; Line(newl) = {p_Leg_4_14, p_Leg_3_12};
l_Air_Window_Y0_w3[] += newl; Line(newl) = {p_Leg_3_12, p_Leg_3_11};

ll_Air_Window_w3 = newll; Curve Loop(newll) = {l_Air_Window_Y0_w3[]};
s_Air_Window_w3 = news; Plane Surface(news) = {ll_Air_Window_w3};
Physical Surface("AIR_WINDOW_W3", AIR_WINDOW_W3) = {s_Air_Window_w3};


// AIR WINDOW 4
l_Air_Window_Y0_w4[] = {};
l_Air_Window_Y0_w4[] += newl; Line(newl) = {p_Leg_4_15, p_Coil_p3_L_pos_int_0};
l_Air_Window_Y0_w4[] += newl; Line(newl) = {p_Coil_p3_L_pos_ext_0, p_Coil_p3_H_pos_int_0};
l_Air_Window_Y0_w4[] += newl; Line(newl) = {p_Coil_p3_H_pos_ext_0, p_Leg_5_17};
ll_Air_Window_w4 = newll; Curve Loop(newll) = {l_Core_In_4[],-l_Air_Window_Y0_w4[2],l_Coil_p3_H_pos[],-l_Air_Window_Y0_w4[1],l_Coil_p3_L_pos[],-l_Air_Window_Y0_w4[0]};
s_Air_Window_w4 = news; Plane Surface(news) = {ll_Air_Window_w4};
Physical Surface("AIR_WINDOW_W4", AIR_WINDOW_W4) = {s_Air_Window_w4};


//-------------------------------------------------------------
// AIR EXT SECTIONS
//-------------------------------------------------------------


// For right side
x_[] = Point{p_Leg_5_19};
p_Air_Ext_R_0 = newp; Point(newp) = {x_[0] + gap_Core_Box_X, 0, 0, c_Box};
p_Air_Ext_R_1 = newp; Point(newp) = {x_[0] + gap_Core_Box_X, x_[1] + gap_Core_Box_Y, 0, c_Box};

// For left side
x_[] = Point{p_Leg_1_1};
p_Air_Ext_L_0 = newp; Point(newp) = {x_[0] - gap_Core_Box_X, 0, 0, c_Box};
p_Air_Ext_L_1 = newp; Point(newp) = {x_[0] - gap_Core_Box_X, x_[1] + gap_Core_Box_Y, 0, c_Box};

l_Air_Ext[] = {};
l_Air_Ext[] += newl; Line(newl) = {p_Air_Ext_R_0, p_Air_Ext_R_1};
l_Air_Ext[] += newl; Line(newl) = {p_Air_Ext_R_1, p_Air_Ext_L_1};
l_Air_Ext[] += newl; Line(newl) = {p_Air_Ext_L_1, p_Air_Ext_L_0};

// Connect outer sides
l_Air_Ext_Y0[] = {};
l_Air_Ext_Y0[] += newl; Line(newl) = {p_Leg_5_19, p_Air_Ext_R_0};
l_Air_Ext_Y0[] += newl; Line(newl) = {p_Air_Ext_L_0, p_Leg_1_1};

ll_Air_Ext = newll; Curve Loop(newll) = {l_Air_Ext_Y0[0], l_Air_Ext[], l_Air_Ext_Y0[1],-l_Core_Out[2],-l_Core_Out[1],-l_Core_Out[0]};
s_Air_Ext = news; Plane Surface(news) = {ll_Air_Ext};

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
//+
Show "*";
//+
Hide "*";
//+
Show {
  Point{1}; Point{2}; Point{3}; Point{4}; Point{5}; Point{6}; Point{7}; Point{8}; Point{9}; Point{10}; Point{11}; Point{12}; Point{13}; Point{14}; Point{15}; Point{16}; Point{17}; Point{18}; Point{19}; Point{20}; Curve{1}; Curve{2}; Curve{3}; Curve{4}; Curve{5}; Curve{6}; Curve{7}; Curve{8}; Curve{9}; Curve{10}; Curve{11}; Curve{12}; Curve{13}; Curve{14}; Curve{15}; Curve{16}; Curve{17}; Curve{18}; Curve{19}; Curve{20}; Surface{22}; 
}
