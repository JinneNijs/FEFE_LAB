/* -------------------------------------------------------------------
   Tutorial 7b : magnetodyamic model of a single-phase transformer

   Features:
   - Use of a generic template formulation library
   - Circuit coupling used as a black-box (see Tutorial 8 for details)

   To compute the solution in a terminal:
       getdp transfo -solve Magnetodynamics2D_av -pos dyn

   To compute the solution interactively from the Gmsh GUI:
       File > Open > transfo.pro
       Run (button at the bottom of the left panel)
   ------------------------------------------------------------------- */

Include "transfo_common.pro";

DefineConstant[
  // The "Massive" option is non-physical, but it's interesting to highlight the
  // fact that both massive and stranded conductors can be handled in the same
  // way as far as circuit-coupling is concerned

  // 1: massive conductors; 2: stranded conductors (coils)
  ConductorType = {2, Choices{1 = "Massive", 2 = "Coil"}, Highlight "Blue",
    Name "Parameters/01Conductor type"}
    
    // Frequency in Hz
  Freq = {50, Min 0, Max 1e3, Step 1,
    Name "Parameters/Frequency"}
    
  Flag_FrequencyDomain = {1, Choices{0, 1},
    Name "Parameters/Frequency-domain?"}
    // Relative permeability of the core material
  mur_Core = {1000, Min 1, Max 10000, Step 1,
    Name "Parameters/Core relative permeability"}
];

Group {
  // Physical regions:
  Air = Region[{AIR_WINDOW_W1,AIR_WINDOW_W2,AIR_WINDOW_W3,AIR_WINDOW_W4, AIR_EXT}];
  Sur_Air_Ext = Region[SUR_AIR_EXT]; // exterior boundary

  Core = Region[CORE]; // magnetic core of the transformer, assumed non-conducting

  Coil_p1_L_P = Region[COIL_P1_L_POS]; // 1st phase, low side, positive side
  Coil_p1_L_M = Region[COIL_P1_L_NEG]; // 1st phase, low side, negative side
  Coil_p1_H_P = Region[COIL_P1_H_POS]; // 1st phase, high side, positive side
  Coil_p1_H_M = Region[COIL_P1_H_NEG]; // 1st phase, high side, negative side
  Coil_p1_L = Region[{Coil_p1_L_P, Coil_p1_L_M}]; // 1st phase, positive side
  Coil_p1_H = Region[{Coil_p1_H_P, Coil_p1_H_M}]; // 1st phase, negative side
  Coil_p1 = Region[{Coil_p1_L, Coil_p1_H}]; // full 1st phase coil

  Coil_p2_L_P = Region[COIL_P2_L_POS]; // 2nd phase, low side, positive side
  Coil_p2_L_M = Region[COIL_P2_L_NEG]; // 2nd phase, low side, negative side
  Coil_p2_H_P = Region[COIL_P2_H_POS]; // 2nd phase, high side, positive side
  Coil_p2_H_M = Region[COIL_P2_H_NEG]; // 2nd phase, high side, negative side
  Coil_p2_L = Region[{Coil_p2_L_P, Coil_p2_L_M}]; // 2nd phase, positive side
  Coil_p2_H = Region[{Coil_p2_H_P, Coil_p2_H_M}]; // 2nd phase, negative side
  Coil_p2 = Region[{Coil_p2_L, Coil_p2_H}]; // full 2nd phase coil

  Coil_p3_L_P = Region[COIL_P3_L_POS]; // 3rd phase, low side, positive side
  Coil_p3_L_M = Region[COIL_P3_L_NEG]; // 3rd phase, low side, negative side
  Coil_p3_H_P = Region[COIL_P3_H_POS]; // 3rd phase, high side, positive side
  Coil_p3_H_M = Region[COIL_P3_H_NEG]; // 3rd phase, high side, negative side
  Coil_p3_L = Region[{Coil_p3_L_P, Coil_p3_L_M}]; // 3rd phase, positive side
  Coil_p3_H = Region[{Coil_p3_H_P, Coil_p3_H_M}]; // 3rd phase, negative side
  Coil_p3 = Region[{Coil_p3_L, Coil_p3_H}]; // full 3rd phase coil

  Coils = Region[{Coil_p1, Coil_p2, Coil_p3}]; // all coils

 

  // Abstract regions that will be used in the "Lib_Magnetodynamics2D_av_Cir.pro"
  // template file included below;
  Vol_Mag = Region[{Air, Core, Coils}]; // full magnetic domain
  If (ConductorType == 1)
    Vol_C_Mag = Region[{Coils}]; // massive conductors
  ElseIf (ConductorType == 2)
    Vol_S_Mag = Region[{Coils}]; // stranded conductors (coils)
  EndIf
}

Function {
  mu0 = 4e-7*Pi;
  mu[Air] = 1 * mu0;
  mu[Core] = mur_Core * mu0;
  mu[Coils] = 1 * mu0;
  nu[] = 1 / mu[];

  sigma[Coils] = 1e7;

  // To be defined separately for each coil portion, to fix the convention of
  // positive current (1: along Oz, -1: along -Oz)
  SignBranch[Coil_p1_L_P] = 1;
  SignBranch[Coil_p1_L_M] = -1;
  SignBranch[Coil_p1_H_P] = 1;
  SignBranch[Coil_p1_H_M] = -1;
  SignBranch[Coil_p2_L_P] = 1;
  SignBranch[Coil_p2_L_M] = -1;
  SignBranch[Coil_p2_H_P] = 1;
  SignBranch[Coil_p2_H_M] = -1;
  SignBranch[Coil_p3_L_P] = 1;
  SignBranch[Coil_p3_L_M] = -1;
  SignBranch[Coil_p3_H_P] = 1;
  SignBranch[Coil_p3_H_M] = -1;

  If(ConductorType == 2)
    // Number of turns in the coils (same for PLUS and MINUS portions) - half
    // values because half coils are defined geometrically due to symmetry!
    // Means that the total number of turns will be twice these values, because we only draw half of the coils
    Ns[Coil_p1_L] = 100;
    Ns[Coil_p1_H] = 10;

    Ns[Coil_p2_L] = 100;
    Ns[Coil_p2_H] = 10;

    Ns[Coil_p3_L] = 100;
    Ns[Coil_p3_H] = 10;

    // To be defined separately for each coil portion:
    Sc[Coil_p1_L_P] = SurfaceArea[];
    Sc[Coil_p1_L_M] = SurfaceArea[];
    Sc[Coil_p1_H_P] = SurfaceArea[];
    Sc[Coil_p1_H_M] = SurfaceArea[];
    Sc[Coil_p2_L_P] = SurfaceArea[];
    Sc[Coil_p2_L_M] = SurfaceArea[];
    Sc[Coil_p2_H_P] = SurfaceArea[];
    Sc[Coil_p2_H_M] = SurfaceArea[];
    Sc[Coil_p3_L_P] = SurfaceArea[];
    Sc[Coil_p3_L_M] = SurfaceArea[];
    Sc[Coil_p3_H_P] = SurfaceArea[];
    Sc[Coil_p3_H_M] = SurfaceArea[];

    // Current density in each coil portion for a unit current (will be
    // multiplied by the actual total current in the coil), in the case of
    // stranded conductors
    js0[Coils] = Ns[] / Sc[] * Vector[0, 0, SignBranch[]];
  EndIf

  // For a correct definition of the voltage
  CoefGeos[Coils] = SignBranch[] * thickness_Core;

  // Parameters and computing the iron losses in the magnetic core
  // Parameters values should be found and Checked

  // Steinmetz[] = rho * k_st * (Freq^alpha) * (Norm[$1]^beta);
}

// We will use a circuit coupling to connect the PLUS and MINUS portions of the
// coil in series, for both the primary and secondary. We will then apply a
// voltage source (with a small resistance in series) on the resulting branch on
// the primary, and connect a resistive load on the resulting branch on the
// secondary.
Flag_CircuitCoupling = 1;

// Note that the voltage will not be equally distributed in the PLUS and MINUS
// parts, which is the reason why we must apply the total voltage through a
// circuit -- and we cannot simply use a current source like in Tutorial 7a.

// Here is the definition of the circuits on primary and secondary sides:
Group {
  // Empty Groups to be filled
  Resistance_Cir  = Region[{}]; // all resistances
  Inductance_Cir  = Region[{}] ; // all inductances
  Capacitance_Cir = Region[{}] ; // all capacitances
  SourceV_Cir = Region[{}]; // all voltage sources
  SourceI_Cir = Region[{}]; // all current sources

  // Primary side phase 1
  E_in_p1 = Region[10001]; // arbitrary region number (not linked to the mesh)
  SourceV_Cir_p1 += Region[{E_in_p1}];
  R_in_p1 = Region[10002]; // arbitrary region number (not linked to the mesh)
  Resistance_Cir += Region[{R_in_p1}];

  // Secondary side phase 1
  R_out_p1 = Region[10101]; // arbitrary region number (not linked to the mesh)
  Resistance_Cir += Region[{R_out_p1}];

    // Primary side phase 2
    E_in_p2 = Region[20001]; // arbitrary region number (not linked to the mesh)
    SourceV_Cir_p2 += Region[{E_in_p2}];
    R_in_p2 = Region[20002]; // arbitrary region number (not linked to the mesh)
    Resistance_Cir += Region[{R_in_p2}];

    // Secondary side phase 2
    R_out_p2 = Region[20101]; // arbitrary region number (not linked to the mesh)
    Resistance_Cir += Region[{R_out_p2}];

    // Primary side phase 3
    E_in_p3 = Region[30001]; // arbitrary region number (not linked to the mesh)
    SourceV_Cir_p3 += Region[{E_in_p3}];
    R_in_p3 = Region[30002]; // arbitrary region number (not linked to the mesh)
    Resistance_Cir += Region[{R_in_p3}];

    // Secondary side phase 3
    R_out_p3 = Region[30101]; // arbitrary region number (not linked to the mesh)
    Resistance_Cir += Region[{R_out_p3}];
}

Function {
  deg = Pi/180;
  // Input RMS voltage (half of the voltage because of symmetry; half coils are
  // defined!)
  val_E_in_p1 = 1200.;
  val_E_in_p2 = 1200.;
  val_E_in_p3 = 1200.;
  phase_E_in = 90 *deg; // Phase in radian (from phase in degree)

  // High value for an open-circuit test; Low value for a short-circuit test;
  // any value in-between for any charge
  Resistance[R_out_p1] = 10;
  Resistance[R_out_p2] = 10;
  Resistance[R_out_p3] = 10;

  // End-winding primary winding resistance for more realistic primary coil
  // model
  Resistance[R_in_p1] = 1e-3;
  Resistance[R_in_p2] = 1e-3;
  Resistance[R_in_p3] = 1e-3;
}

Constraint {
  { Name MagneticVectorPotential_2D;
    Case {
      { Region Sur_Air_Ext; Value 0; }
    }
  }
  { Name Current_2D;
    Case {
    }
  }
  { Name Voltage_2D;
    Case {
    }
  }
  { Name Current_Cir ;
    Case {
    }
  }
  { Name Voltage_Cir ;
    Case {
      { Region E_in_p1; Value val_E_in_p1;
        // F_Cos_wt_p[] is a built-in function with two parameters (w and p),
        // that can be used to evaluate cos(w * t + p) in both frequency- and
        // time-domain
        TimeFunction F_Cos_wt_p[]{2*Pi*Freq, phase_E_in}; }
    }
  }
  { Name ElectricalCircuit ; Type Network ;
    Case Circuit_p1_H {
      // PLUS and MINUS coil portions to be connected in series, together with
      // E_in; an additional resistor is defined in series to represent the
      // Coil_1 end-winding, which is not considered in the 2D model.
      { Region E_in_p1; Branch {1,4}; }
      { Region R_in_p1; Branch {4,2}; }

      { Region Coil_p1_H_P; Branch {2,3} ; }
      { Region Coil_p1_H_M; Branch {3,1} ; }
    }
    Case Circuit_p1_L {
      // PLUS and MINUS coil portions to be connected in series, together with
      // R_out (an additional resistor could be defined to represent the Coil_2
      // end-winding - but we can directly add it to R_out as well)
      { Region R_out_p1; Branch {1,2}; }

      { Region Coil_p1_L_P; Branch {2,3} ; }
      { Region Coil_p1_L_M; Branch {3,1} ; }
    }
    Case Circuit_p2_H {
      // PLUS and MINUS coil portions to be connected in series together with
      // E_in; an additional resistor is defined in series to represent the
        // Coil_1 end-winding, which is not considered in the 2D model.
      { Region E_in_p2; Branch {5,8}; }
      { Region R_in_p2; Branch {8,6}; }

      { Region Coil_p2_H_P; Branch {6,7} ; }
      { Region Coil_p2_H_M; Branch {7,5} ; }
    }
    Case Circuit_p2_L {
      // PLUS and MINUS coil portions to be connected in series, together with
      // R_out (an additional resistor could be defined to represent the Coil_2
      // end-winding - but we can directly add it to R_out as well)
      { Region R_out_p2; Branch {5,6}; }

      { Region Coil_p2_L_P; Branch {5,7} ; }
      { Region Coil_p2_L_M; Branch {7,6} ; }
    }
    Case Circuit_p3_H {
      // PLUS and MINUS coil portions to be connected in series together with
      // E_in; an additional resistor is defined in series to represent the
        // Coil_1 end-winding, which is not considered in the 2D model.
      { Region E_in_p3; Branch {9,12}; }
      { Region R_in_p3; Branch {12,10}; }

      { Region Coil_p3_H_P; Branch {9,11} ; }
      { Region Coil_p3_H_M; Branch {11,10} ; }
    }
    Case Circuit_p3_L {
      // PLUS and MINUS coil portions to be connected in series, together with
      // R_out (an additional resistor could be defined to represent the Coil_2
      // end-winding - but we can directly add it to R_out as well)
      { Region R_out_p3; Branch {9,10}; }

      { Region Coil_p3_L_P; Branch {9,11} ; }
      { Region Coil_p3_L_M; Branch {11,10} ; }
    }
   /*Case Circuit_Connection_3phases_high {
      // Connection of the three phases on the high voltage side in a star
      // configuration (neutral point not connected)
      { Region Coil_p1_H_P; Branch {1,2} ; }
      { Region Coil_p2_H_P; Branch {2,3} ; }
      { Region Coil_p3_H_P; Branch {3,1} ; }
    }
    Case Circuit_Connection_3phases_low {
        // Connection of the three phases on the low voltage side in a star
        // configuration (neutral point not connected)
      { Region Coil_p1_L_P; Branch {1,2} ; }
      { Region Coil_p2_L_P; Branch {2,3} ; }
      { Region Coil_p3_L_P; Branch {3,1} ; }
    }*/
  }
}

Include "Lib_Magnetodynamics2D_av_Cir.pro";

PostOperation {
  { Name dyn; NameOfPostProcessing Magnetodynamics2D_av;
    Operation {
      Print[ j, OnElementsOf Region[{Vol_C_Mag, Vol_S_Mag}], Format Gmsh, File "j.pos" ];
      Print[ b, OnElementsOf Vol_Mag, Format Gmsh, File "b.pos" ];
      Print[ az, OnElementsOf Vol_Mag, Format Gmsh, File "az.pos" ];
      If (Flag_FrequencyDomain)
        // In text file UI.txt: voltage and current of the primary coil (from
        // E_in) (real and imaginary parts!)
        Echo[ "E_in", Format Table, File "UI.txt" ];
        Print[ U, OnRegion E_in_p1, Format FrequencyTable, File > "UI.txt" ];
        Print[ I, OnRegion E_in_p1, Format FrequencyTable, File > "UI.txt"];

        // In text file UI.txt: voltage and current of the secondary coil (from
        // R_out)
        Echo[ "R_out", Format Table, File > "UI.txt" ];
        Print[ U, OnRegion R_out_p1, Format FrequencyTable, File > "UI.txt" ];
        Print[ I, OnRegion R_out_p1, Format FrequencyTable, File > "UI.txt"];
      EndIf
    }
  }
}
