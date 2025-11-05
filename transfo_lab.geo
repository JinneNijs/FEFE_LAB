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
p_Leg_1_5=newp; Point(newp) = {-width_Core/2-1*width_Core_Leg-2*width_Window,0,0,c_Core};
p_Leg_1_7=newp; Point(newp) = {-width_Core/2-2*width_Window,0,0,c_Core};

p_Leg_1_6=newp; Point(newp) = {-width_Core/2-1*width_Core_Leg-2*width_Window,height_Core/2-width_Core_Leg,0,c_Core};
p_Leg_1_8=newp; Point(newp) = {-width_Core/2-2*width_Window,height_Core/2-width_Core_Leg,0,c_Core};

l_Core_Leg_2[]={};
// lijn links
l_Core_Leg_2[]+=newl; Line(newl) = {p_Leg_1_5,p_Leg_1_6};
// lijn onder
l_Core_Leg_2[]+=newl; Line(newl) = {p_Leg_1_5,p_Leg_1_7};
// lijn rechts
l_Core_Leg_2[]+=newl; Line(newl) = {p_Leg_1_7,p_Leg_1_8};


// middelste been
p_Leg_1_9=newp; Point(newp) = {-width_Core_Leg/2,0,0,c_Core};
p_Leg_1_11=newp; Point(newp) = {width_Core_Leg/2,0,0,c_Core};

p_Leg_1_10=newp; Point(newp) = {-width_Core_Leg/2,height_Core/2-width_Core_Leg,0,c_Core};
p_Leg_1_12=newp; Point(newp) = {width_Core_Leg/2,height_Core/2-width_Core_Leg,0,c_Core};

l_Core_Leg_3[]={};
// lijn links
l_Core_Leg_3[]+=newl; Line(newl) = {p_Leg_1_9,p_Leg_1_10};
// lijn onder
l_Core_Leg_3[]+=newl; Line(newl) = {p_Leg_1_9,p_Leg_1_11};        
// lijn rechts
l_Core_Leg_3[]+=newl; Line(newl) = {p_Leg_1_11,p_Leg_1_12};

// tweede been van rechts
p_Leg_1_13=newp; Point(newp) = {width_Core/2+2*width_Window,0,0,c_Core};
p_Leg_1_15=newp; Point(newp) = {width_Core/2+1*width_Core_Leg+2*width_Window,0,0,c_Core};

p_Leg_1_14=newp; Point(newp) = {width_Core/2+2*width_Window,height_Core/2-width_Core_Leg,0,c_Core};
p_Leg_1_16=newp; Point(newp) = {width_Core/2+1*width_Core_Leg+2*width_Window,height_Core/2-width_Core_Leg,0,c_Core};

l_Core_Leg_4[]={};
// lijn links
l_Core_Leg_4[]+=newl; Line(newl) = {p_Leg_1_13,p_Leg_1_14};       
// lijn onder
l_Core_Leg_4[]+=newl; Line(newl) = {p_Leg_1_13,p_Leg_1_15};
// lijn rechts
l_Core_Leg_4[]+=newl; Line(newl) = {p_Leg_1_15,p_Leg_1_16};
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



// maak de oppervlakte van de kern
// 1st lijnen toevoegen aan curve loop
// 2nd oppervlakte maken
ll_Core=newll; Curve Loop(newll) = {l_Core_Leg_1[],l_Core_Leg_2[],l_Core_Leg_3[],l_Core_Leg_4[],l_Core_Leg_5[],l_Core_Top[]};
s_Core=news; Plane Surface(news) = {ll_Core};

Physical Surface("CORE", CORE) = {s_Core};