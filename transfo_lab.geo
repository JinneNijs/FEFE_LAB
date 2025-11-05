Include "transfo_common.pro";

p_Leg_1_1=newp; Point(newp) = {-width_Core/2-2*width_Core_Leg-4*width_Window,0,0,c_Core};
p_Leg_1_3=newp; Point(newp) = {-width_Core/2-1*width_Core_Leg-4*width_Window,0,0,c_Core};

p_Leg_1_2=newp; Point(newp) = {-width_Core/2-2*width_Core_Leg-4*width_Window,height_Core/2,0,c_Core};
p_Leg_1_4=newp; Point(newp) = {-width_Core/2-1*width_Core_Leg-4*width_Window,height_Core/2-width_Core_Leg,0,c_Core};

l_Core_Leg_1[]={};
l_Core_Leg_1[]+=newl; Line(newl) = {p_Leg_1_1,p_Leg_1_2};

l_Core_Leg_1[]+=newl; Line(newl) = {p_Leg_1_1,p_Leg_1_3};

l_Core_Leg_1[]+=newl; Line(newl) = {p_Leg_1_3,p_Leg_1_4};



p_Leg_1_5=newp; Point(newp) = {-width_Core/2-1*width_Core_Leg-2*width_Window,0,0,c_Core};
p_Leg_1_7=newp; Point(newp) = {-width_Core/2-2*width_Window,0,0,c_Core};

p_Leg_1_6=newp; Point(newp) = {-width_Core/2-1*width_Core_Leg-2*width_Window,height_Core/2-width_Core_Leg,0,c_Core};
p_Leg_1_8=newp; Point(newp) = {-width_Core/2-2*width_Window,height_Core/2-width_Core_Leg,0,c_Core};

l_Core_Leg_2[]={};
l_Core_Leg_2[]+=newl; Line(newl) = {p_Leg_1_5,p_Leg_1_6};

l_Core_Leg_2[]+=newl; Line(newl) = {p_Leg_1_5,p_Leg_1_7};

l_Core_Leg_2[]+=newl; Line(newl) = {p_Leg_1_7,p_Leg_1_8};

p_Leg_1_9=newp; Point(newp) = {-width_Core_Leg/2,0,0,c_Core};
p_Leg_1_11=newp; Point(newp) = {width_Core_Leg/2,0,0,c_Core};

p_Leg_1_10=newp; Point(newp) = {-width_Core_Leg/2,height_Core/2-width_Core_Leg,0,c_Core};
p_Leg_1_12=newp; Point(newp) = {width_Core_Leg/2,height_Core/2-width_Core_Leg,0,c_Core};

l_Core_Leg_3[]={};
l_Core_Leg_3[]+=newl; Line(newl) = {p_Leg_1_9,p_Leg_1_10};

l_Core_Leg_3[]+=newl; Line(newl) = {p_Leg_1_9,p_Leg_1_11};        

l_Core_Leg_3[]+=newl; Line(newl) = {p_Leg_1_11,p_Leg_1_12};


p_Leg_1_13=newp; Point(newp) = {width_Core/2+2*width_Window,0,0,c_Core};
p_Leg_1_15=newp; Point(newp) = {width_Core/2+1*width_Core_Leg+2*width_Window,0,0,c_Core};

p_Leg_1_14=newp; Point(newp) = {width_Core/2+2*width_Window,height_Core/2-width_Core_Leg,0,c_Core};
p_Leg_1_16=newp; Point(newp) = {width_Core/2+1*width_Core_Leg+2*width_Window,height_Core/2-width_Core_Leg,0,c_Core};

l_Core_Leg_4[]={};
l_Core_Leg_4[]+=newl; Line(newl) = {p_Leg_1_13,p_Leg_1_14};       

l_Core_Leg_4[]+=newl; Line(newl) = {p_Leg_1_13,p_Leg_1_15};

l_Core_Leg_4[]+=newl; Line(newl) = {p_Leg_1_15,p_Leg_1_16};

p_Leg_5_17=newp; Point(newp) = {width_Core/2+1*width_Core_Leg+4*width_Window,0,0,c_Core};
p_Leg_5_19=newp; Point(newp) = {width_Core/2+2*width_Core_Leg+4*width_Window,0,0,c_Core};

p_Leg_5_18=newp; Point(newp) = {width_Core/2+1*width_Core_Leg+4*width_Window,height_Core/2-width_Core_Leg,0,c_Core};

p_Leg_5_20=newp; Point(newp) = {width_Core/2+2*width_Core_Leg+4*width_Window,height_Core/2,0,c_Core};

l_Core_Leg_5[]={};
l_Core_Leg_5[]+=newl; Line(newl) = {p_Leg_5_17,p_Leg_5_18};

l_Core_Leg_5[]+=newl; Line(newl) = {p_Leg_5_17,p_Leg_5_19};

l_Core_Leg_5[]+=newl; Line(newl) = {p_Leg_5_19,p_Leg_5_20};

l_Core_Top[]={};
l_Core_Top[]+=newl; Line(newl) = {p_Leg_1_2,p_Leg_5_20};




ll_Core=newll; Curve Loop(newll) = {l_Core_Leg_1[],l_Core_Leg_2[],l_Core_Leg_3[],l_Core_Leg_4[],l_Core_Leg_5[],l_Core_Top[]};
s_Core=news; Plane Surface(news) = {ll_Core};

Physical Surface("CORE", CORE) = {s_Core};