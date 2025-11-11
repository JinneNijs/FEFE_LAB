Include "transfo_common.pro";
// meeste linkse been
p_Leg_1_1=newp; Point(newp) = {-width_Core/2-2*width_Core_Leg-4*width_Window,0,0,c_Core};
p_Leg_1_3=newp; Point(newp) = {-width_Core/2-1*width_Core_Leg-4*width_Window,0,0,c_Core};

p_Leg_1_2=newp; Point(newp) = {-width_Core/2-2*width_Core_Leg-4*width_Window,height_Core/2,0,c_Core};
p_Leg_1_4=newp; Point(newp) = {-width_Core/2-1*width_Core_Leg-4*width_Window,height_Core/2-width_Core_Leg,0,c_Core};
// Altijd de lijnen in een groeppe array steken om daarna in 1 keer een oppervlakte te maken
l_Core_Leg_1[]={};
// lijn links
l_Core_Leg_1[]+=newl; Line(newl) = {p_Leg_1_1,p_Leg_1_2};
// lijn onder
l_Core_Leg_1[]+=newl; Line(newl) = {p_Leg_1_1,p_Leg_1_3};
// lijn rechts
l_Core_Leg_1[]+=newl; Line(newl) = {p_Leg_1_3,p_Leg_1_4};


 // tweede been van links
p_Leg_2_5=newp; Point(newp) = {-width_Core/2-1*width_Core_Leg-2*width_Window,0,0,c_Core};
p_Leg_2_7=newp; Point(newp) = {-width_Core/2-2*width_Window,0,0,c_Core};

p_Leg_2_6=newp; Point(newp) = {-width_Core/2-1*width_Core_Leg-2*width_Window,height_Core/2-width_Core_Leg,0,c_Core};
p_Leg_2_8=newp; Point(newp) = {-width_Core/2-2*width_Window,height_Core/2-width_Core_Leg,0,c_Core};

l_Core_Leg_2[]={};
// lijn links
l_Core_Leg_2[]+=newl; Line(newl) = {p_Leg_2_5,p_Leg_2_6};
// lijn onder
l_Core_Leg_2[]+=newl; Line(newl) = {p_Leg_2_5,p_Leg_2_7};
// lijn rechts
l_Core_Leg_2[]+=newl; Line(newl) = {p_Leg_2_7,p_Leg_2_8};


// middelste been
p_Leg_3_9=newp; Point(newp) = {-width_Core_Leg/2,0,0,c_Core};
p_Leg_3_11=newp; Point(newp) = {width_Core_Leg/2,0,0,c_Core};

p_Leg_3_10=newp; Point(newp) = {-width_Core_Leg/2,height_Core/2-width_Core_Leg,0,c_Core};
p_Leg_3_12=newp; Point(newp) = {width_Core_Leg/2,height_Core/2-width_Core_Leg,0,c_Core};

l_Core_Leg_3[]={};
// lijn links
l_Core_Leg_3[]+=newl; Line(newl) = {p_Leg_3_9,p_Leg_3_10};
// lijn onder
l_Core_Leg_3[]+=newl; Line(newl) = {p_Leg_3_9,p_Leg_3_11};        
// lijn rechts
l_Core_Leg_3[]+=newl; Line(newl) = {p_Leg_3_11,p_Leg_3_12};

// tweede been van rechts
p_Leg_4_13=newp; Point(newp) = {width_Core/2+2*width_Window,0,0,c_Core};
p_Leg_4_15=newp; Point(newp) = {width_Core/2+1*width_Core_Leg+2*width_Window,0,0,c_Core};

p_Leg_4_14=newp; Point(newp) = {width_Core/2+2*width_Window,height_Core/2-width_Core_Leg,0,c_Core};
p_Leg_4_16=newp; Point(newp) = {width_Core/2+1*width_Core_Leg+2*width_Window,height_Core/2-width_Core_Leg,0,c_Core};

l_Core_Leg_4[]={};
// lijn links
l_Core_Leg_4[]+=newl; Line(newl) = {p_Leg_4_13,p_Leg_4_14};       
// lijn onder
l_Core_Leg_4[]+=newl; Line(newl) = {p_Leg_4_13,p_Leg_4_15};
// lijn rechts
l_Core_Leg_4[]+=newl; Line(newl) = {p_Leg_4_15,p_Leg_4_16};
// meest rechtse been
p_Leg_5_17=newp; Point(newp) = {width_Core/2+1*width_Core_Leg+4*width_Window,0,0,c_Core};
p_Leg_5_19=newp; Point(newp) = {width_Core/2+2*width_Core_Leg+4*width_Window,0,0,c_Core};

p_Leg_5_18=newp; Point(newp) = {width_Core/2+1*width_Core_Leg+4*width_Window,height_Core/2-width_Core_Leg,0,c_Core};

p_Leg_5_20=newp; Point(newp) = {width_Core/2+2*width_Core_Leg+4*width_Window,height_Core/2,0,c_Core};

l_Core_Leg_5[]={};
// lijn links
l_Core_Leg_5[]+=newl; Line(newl) = {p_Leg_5_17,p_Leg_5_18};
// lijn onder
l_Core_Leg_5[]+=newl; Line(newl) = {p_Leg_5_17,p_Leg_5_19};
// lijn rechts
l_Core_Leg_5[]+=newl; Line(newl) = {p_Leg_5_19,p_Leg_5_20};

l_Core_Top[]={};
// bovenste lijn
l_Core_Top[]+=newl; Line(newl) = {p_Leg_1_2,p_Leg_5_20};
// Lijnen onderaan de kern
l_Core_Bottom[]={};
l_Core_Bottom[]+=newl; Line(newl) = {p_Leg_1_4,p_Leg_2_6};
l_Core_Bottom[]+=newl; Line(newl) = {p_Leg_2_8,p_Leg_3_10};
l_Core_Bottom[]+=newl; Line(newl) = {p_Leg_3_12,p_Leg_4_14};
l_Core_Bottom[]+=newl; Line(newl) = {p_Leg_4_16,p_Leg_5_18};
l




// maak de oppervlakte van de kern
// 1st lijnen toevoegen aan curve loop
// 2nd oppervlakte maken
ll_Core=newll; Curve Loop(newll) = {l_Core_Leg_1[],l_Core_Leg_2[],l_Core_Leg_3[],l_Core_Leg_4[],l_Core_Leg_5[],l_Core_Top[],l_Core_Bottom[]};
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
l_Coil_p2_L_pos[]+=newl; Line(newl) = {p_Coil_p2_L_pos_int_0,p_Coil_p2_L_pos_int_1};
// lijn onder
l_Coil_p2_L_pos[]+=newl; Line(newl) = {p_Coil_p2_L_pos_int_0,p_Coil_p2_L_pos_ext_0};
// lijn rechts
l_Coil_p2_L_pos[]+=newl; Line(newl) = {p_Coil_p2_L_pos_ext_0,p_Coil_p2_L_pos_ext_1};
// lijn boven
l_Coil_p2_L_pos[]+=newl; Line(newl) = {p_Coil_p2_L_pos_int_1,p_Coil_p2_L_pos_ext_1};
// maak de oppervlakte van de coil
ll_Coil_p2_L_pos=newll; Curve Loop(newll) = {l_Coil_p2_L_pos[]};
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
l_Coil_p2_H_pos[]+=newl; Line(newl) = {p_Coil_p2_H_pos_int_0,p_Coil_p2_H_pos_int_1};
// lijn onder
l_Coil_p2_H_pos[]+=newl; Line(newl) = {p_Coil_p2_H_pos_int_0,p_Coil_p2_H_pos_ext_0};
// lijn rechts
l_Coil_p2_H_pos[]+=newl; Line(newl) = {p_Coil_p2_H_pos_ext_0,p_Coil_p2_H_pos_ext_1};
// lijn boven
l_Coil_p2_H_pos[]+=newl; Line(newl) = {p_Coil_p2_H_pos_int_1,p_Coil_p2_H_pos_ext_1};
// maak de oppervlakte van de coil
ll_Coil_p2_H_pos=newll; Curve Loop(newll) = {l_Coil_p2_H_pos[]};
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
l_Coil_p2_L_neg[]+=newl; Line(newl) = {p_Coil_p2_L_neg_ext_0,p_Coil_p2_L_neg_ext_1};
// lijn onder
l_Coil_p2_L_neg[]+=newl; Line(newl) = {p_Coil_p2_L_neg_int_0,p_Coil_p2_L_neg_ext_0};
// lijn rechts
l_Coil_p2_L_neg[]+=newl; Line(newl) = {p_Coil_p2_L_neg_int_0,p_Coil_p2_L_neg_int_1};
// lijn boven
l_Coil_p2_L_neg[]+=newl; Line(newl) = {p_Coil_p2_L_neg_int_1,p_Coil_p2_L_neg_ext_1};

// maak de oppervlakte van de coil
ll_Coil_p2_L_neg=newll; Curve Loop(newll) = {l_Coil_p2_L_neg[]};
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
l_Coil_p2_H_neg[]+=newl; Line(newl) = {p_Coil_p2_H_neg_ext_0,p_Coil_p2_H_neg_ext_1};
// lijn onder
l_Coil_p2_H_neg[]+=newl; Line(newl) = {p_Coil_p2_H_neg_int_0,p_Coil_p2_H_neg_ext_0};
// lijn rechts
l_Coil_p2_H_neg[]+=newl; Line(newl) = {p_Coil_p2_H_neg_int_0,p_Coil_p2_H_neg_int_1};
// lijn boven
l_Coil_p2_H_neg[]+=newl; Line(newl) = {p_Coil_p2_H_neg_int_1,p_Coil_p2_H_neg_ext_1};

// maak de oppervlakte van de coil
ll_Coil_p2_H_neg=newll; Curve Loop(newll) = {l_Coil_p2_H_neg[]};
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
l_Coil_p1_L_pos[]+=newl; Line(newl) = {p_Coil_p1_L_pos_int_0,p_Coil_p1_L_pos_int_1};
l_Coil_p1_L_pos[]+=newl; Line(newl) = {p_Coil_p1_L_pos_int_0,p_Coil_p1_L_pos_ext_0};
l_Coil_p1_L_pos[]+=newl; Line(newl) = {p_Coil_p1_L_pos_ext_0,p_Coil_p1_L_pos_ext_1};
l_Coil_p1_L_pos[]+=newl; Line(newl) = {p_Coil_p1_L_pos_int_1,p_Coil_p1_L_pos_ext_1};
ll_Coil_p1_L_pos=newll; Curve Loop(newll) = {l_Coil_p1_L_pos[]};
s_Coil_p1_L_pos=news; Plane Surface(news) = {ll_Coil_p1_L_pos};
Physical Surface("COIL_P1_L_POS", COIL_P1_L_POS) = {s_Coil_p1_L_pos};

// LEG 2, high side, +
x_[]=Point{p_Coil_p1_L_pos_ext_0};
p_Coil_p1_H_pos_int_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_p1_L,0,0,c_Coil_p1_H};
p_Coil_p1_H_pos_ext_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_p1_L+width_Coil_p1_L,0,0,c_Coil_p1_H};
p_Coil_p1_H_pos_int_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_p1_L,height_Coil_p1_L/2,0,c_Coil_p1_H};
p_Coil_p1_H_pos_ext_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_p1_L+width_Coil_p1_L,height_Coil_p1_L/2,0,c_Coil_p1_H};
l_Coil_p1_H_pos[]={};
l_Coil_p1_H_pos[]+=newl; Line(newl) = {p_Coil_p1_H_pos_int_0,p_Coil_p1_H_pos_int_1};
l_Coil_p1_H_pos[]+=newl; Line(newl) = {p_Coil_p1_H_pos_int_0,p_Coil_p1_H_pos_ext_0};
l_Coil_p1_H_pos[]+=newl; Line(newl) = {p_Coil_p1_H_pos_ext_0,p_Coil_p1_H_pos_ext_1};
l_Coil_p1_H_pos[]+=newl; Line(newl) = {p_Coil_p1_H_pos_int_1,p_Coil_p1_H_pos_ext_1};
ll_Coil_p1_H_pos=newll; Curve Loop(newll) = {l_Coil_p1_H_pos[]};
s_Coil_p1_H_pos=news; Plane Surface(news) = {ll_Coil_p1_H_pos};
Physical Surface("COIL_P1_H_POS", COIL_P1_H_POS) = {s_Coil_p1_H_pos};

// LEG 2, low side, -
x_[]=Point{p_Leg_2_5};
p_Coil_p1_L_neg_int_0=newp; Point(newp) = {x_[0]-gap_Core_Coil_p1_L,0,0,c_Coil_p1_L};
p_Coil_p1_L_neg_ext_0=newp; Point(newp) = {x_[0]-gap_Core_Coil_p1_L-width_Coil_p1_L,0,0,c_Coil_p1_L};
p_Coil_p1_L_neg_int_1=newp; Point(newp) = {x_[0]-gap_Core_Coil_p1_L,height_Coil_p1_L/2,0,c_Coil_p1_L};
p_Coil_p1_L_neg_ext_1=newp; Point(newp) = {x_[0]-gap_Core_Coil_p1_L-width_Coil_p1_L,height_Coil_p1_L/2,0,c_Coil_p1_L};

l_Coil_p1_L_neg[]={};
// lijn links
l_Coil_p1_L_neg[]+=newl; Line(newl) = {p_Coil_p1_L_neg_ext_0,p_Coil_p1_L_neg_ext_1};
// lijn onder
l_Coil_p1_L_neg[]+=newl; Line(newl) = {p_Coil_p1_L_neg_int_0,p_Coil_p1_L_neg_ext_0};
// lijn rechts
l_Coil_p1_L_neg[]+=newl; Line(newl) = {p_Coil_p1_L_neg_int_0,p_Coil_p1_L_neg_int_1};
// lijn boven
l_Coil_p1_L_neg[]+=newl; Line(newl) = {p_Coil_p1_L_neg_int_1,p_Coil_p1_L_neg_ext_1};

// maak de oppervlakte van the coil
ll_Coil_p1_L_neg=newll; Curve Loop(newll) = {l_Coil_p1_L_neg[]};
s_Coil_p1_L_neg=news; Plane Surface(news) = {ll_Coil_p1_L_neg};
Physical Surface("COIL_P1_L_NEG", COIL_P1_L_NEG) = {s_Coil_p1_L_neg};

// LEG 2, high side, -
x_[]=Point{p_Coil_p1_L_neg_ext_0};
p_Coil_p1_H_neg_int_0=newp; Point(newp) = {x_[0]-gap_Core_Coil_p1_L,0,0,c_Coil_p1_L};
p_Coil_p1_H_neg_ext_0=newp; Point(newp) = {x_[0]-gap_Core_Coil_p1_L-width_Coil_p1_L,0,0,c_Coil_p1_L};
p_Coil_p1_H_neg_int_1=newp; Point(newp) = {x_[0]-gap_Core_Coil_p1_L,height_Coil_p1_L/2,0,c_Coil_p1_L};
p_Coil_p1_H_neg_ext_1=newp; Point(newp) = {x_[0]-gap_Core_Coil_p1_L-width_Coil_p1_L,height_Coil_p1_L/2,0,c_Coil_p1_L};
l_Coil_p1_H_neg[]={};
l_Coil_p1_H_neg[]+=newl; Line(newl) = {p_Coil_p1_H_neg_ext_0,p_Coil_p1_H_neg_ext_1};
l_Coil_p1_H_neg[]+=newl; Line(newl) = {p_Coil_p1_H_neg_int_0,p_Coil_p1_H_neg_ext_0};
l_Coil_p1_H_neg[]+=newl; Line(newl) = {p_Coil_p1_H_neg_int_0,p_Coil_p1_H_neg_int_1};
l_Coil_p1_H_neg[]+=newl; Line(newl) = {p_Coil_p1_H_neg_int_1,p_Coil_p1_H_neg_ext_1};
ll_Coil_p1_H_neg=newll; Curve Loop(newll) = {l_Coil_p1_H_neg[]};
s_Coil_p1_H_neg=news; Plane Surface(news) = {ll_Coil_p1_H_neg};
Physical Surface("COIL_P1_H_NEG", COIL_P1_H_NEG) = {s_Coil_p1_H_neg};

// --- Coils for LEG 4 (both low/high, + and -) ---
// LEG 4, low side, +
x_[]=Point{p_Leg_4_15};
p_Coil_p3_L_pos_int_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_p2_L,0,0,c_Coil_p2_L};
p_Coil_p3_L_pos_ext_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_p2_L+width_Coil_p2_L,0,0,c_Coil_p2_L};
p_Coil_p3_L_pos_int_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_p2_L,height_Coil_p2_L/2,0,c_Coil_p2_L};
p_Coil_p3_L_pos_ext_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_p2_L+width_Coil_p2_L,height_Coil_p2_L/2,0,c_Coil_p2_L};
l_Coil_p3_L_pos[]={};
l_Coil_p3_L_pos[]+=newl; Line(newl) = {p_Coil_p3_L_pos_int_0,p_Coil_p3_L_pos_int_1};
l_Coil_p3_L_pos[]+=newl; Line(newl) = {p_Coil_p3_L_pos_int_0,p_Coil_p3_L_pos_ext_0};
l_Coil_p3_L_pos[]+=newl; Line(newl) = {p_Coil_p3_L_pos_ext_0,p_Coil_p3_L_pos_ext_1};
l_Coil_p3_L_pos[]+=newl; Line(newl) = {p_Coil_p3_L_pos_int_1,p_Coil_p3_L_pos_ext_1};
ll_Coil_p3_L_pos=newll; Curve Loop(newll) = {l_Coil_p3_L_pos[]};
s_Coil_p3_L_pos=news; Plane Surface(news) = {ll_Coil_p3_L_pos};
Physical Surface("COIL_P3_L_POS", COIL_P3_L_POS) = {s_Coil_p3_L_pos};

// LEG 4, high side, +
x_[]=Point{p_Coil_p3_L_pos_ext_0};
p_Coil_p3_H_pos_int_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_p2_L,0,0,c_Coil_p2_L};
p_Coil_p3_H_pos_ext_0=newp; Point(newp) = {x_[0]+gap_Core_Coil_p2_L+width_Coil_p2_L,0,0,c_Coil_p2_L};
p_Coil_p3_H_pos_int_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_p2_L,height_Coil_p2_L/2,0,c_Coil_p2_L};
p_Coil_p3_H_pos_ext_1=newp; Point(newp) = {x_[0]+gap_Core_Coil_p2_L+width_Coil_p2_L,height_Coil_p2_L/2,0,c_Coil_p2_L};
l_Coil_p3_H_pos[]={};
l_Coil_p3_H_pos[]+=newl; Line(newl) = {p_Coil_p3_H_pos_int_0,p_Coil_p3_H_pos_int_1};
l_Coil_p3_H_pos[]+=newl; Line(newl) = {p_Coil_p3_H_pos_int_0,p_Coil_p3_H_pos_ext_0};
l_Coil_p3_H_pos[]+=newl; Line(newl) = {p_Coil_p3_H_pos_ext_0,p_Coil_p3_H_pos_ext_1};
l_Coil_p3_H_pos[]+=newl; Line(newl) = {p_Coil_p3_H_pos_int_1,p_Coil_p3_H_pos_ext_1};
ll_Coil_p3_H_pos=newll; Curve Loop(newll) = {l_Coil_p3_H_pos[]};
s_Coil_p3_H_pos=news; Plane Surface(news) = {ll_Coil_p3_H_pos};
Physical Surface("COIL_P3_H_POS", COIL_P3_H_POS) = {s_Coil_p3_H_pos};

// LEG 4, low side, -
x_[]=Point{p_Leg_4_13};
p_Coil_p3_L_neg_int_0=newp; Point(newp) = {x_[0]-gap_Core_Coil_p2_L,0,0,c_Coil_p2_L};
p_Coil_p3_L_neg_ext_0=newp; Point(newp) = {x_[0]-gap_Core_Coil_p2_L-width_Coil_p2_L,0,0,c_Coil_p2_L};
p_Coil_p3_L_neg_int_1=newp; Point(newp) = {x_[0]-gap_Core_Coil_p2_L,height_Coil_p2_L/2,0,c_Coil_p2_L};
p_Coil_p3_L_neg_ext_1=newp; Point(newp) = {x_[0]-gap_Core_Coil_p2_L-width_Coil_p2_L,height_Coil_p2_L/2,0,c_Coil_p2_L};
l_Coil_p3_L_neg[]={};
l_Coil_p3_L_neg[]+=newl; Line(newl) = {p_Coil_p3_L_neg_ext_0,p_Coil_p3_L_neg_ext_1};
l_Coil_p3_L_neg[]+=newl; Line(newl) = {p_Coil_p3_L_neg_int_0,p_Coil_p3_L_neg_ext_0};
l_Coil_p3_L_neg[]+=newl; Line(newl) = {p_Coil_p3_L_neg_int_0,p_Coil_p3_L_neg_int_1};
l_Coil_p3_L_neg[]+=newl; Line(newl) = {p_Coil_p3_L_neg_int_1,p_Coil_p3_L_neg_ext_1};
ll_Coil_p3_L_neg=newll; Curve Loop(newll) = {l_Coil_p3_L_neg[]};
s_Coil_p3_L_neg=news; Plane Surface(news) = {ll_Coil_p3_L_neg};
Physical Surface("COIL_P3_L_NEG", COIL_P3_L_NEG) = {s_Coil_p3_L_neg};

// LEG 4, high side, -
x_[]=Point{p_Coil_p3_L_neg_ext_0};
p_Coil_p3_H_neg_int_0=newp; Point(newp) = {x_[0]-gap_Core_Coil_p2_L,0,0,c_Coil_p2_L};
p_Coil_p3_H_neg_ext_0=newp; Point(newp) = {x_[0]-gap_Core_Coil_p2_L-width_Coil_p2_L,0,0,c_Coil_p2_L};
p_Coil_p3_H_neg_int_1=newp; Point(newp) = {x_[0]-gap_Core_Coil_p2_L,height_Coil_p2_L/2,0,c_Coil_p2_L};
p_Coil_p3_H_neg_ext_1=newp; Point(newp) = {x_[0]-gap_Core_Coil_p2_L-width_Coil_p2_L,height_Coil_p2_L/2,0,c_Coil_p2_L};
l_Coil_p3_H_neg[]={};
l_Coil_p3_H_neg[]+=newl; Line(newl) = {p_Coil_p3_H_neg_ext_0,p_Coil_p3_H_neg_ext_1};
l_Coil_p3_H_neg[]+=newl; Line(newl) = {p_Coil_p3_H_neg_int_0,p_Coil_p3_H_neg_ext_0};
l_Coil_p3_H_neg[]+=newl; Line(newl) = {p_Coil_p3_H_neg_int_0,p_Coil_p3_H_neg_int_1};
l_Coil_p3_H_neg[]+=newl; Line(newl) = {p_Coil_p3_H_neg_int_1,p_Coil_p3_H_neg_ext_1};
ll_Coil_p3_H_neg=newll; Curve Loop(newll) = {l_Coil_p3_H_neg[]};
s_Coil_p3_H_neg=news; Plane Surface(news) = {ll_Coil_p3_H_neg};
Physical Surface("COIL_P3_H_NEG", COIL_P3_L_NEG) = {s_Coil_p3_H_neg};
