
      block data molec                                                  
c******************************************************************************
c     This routine contains the default list of molecules and ions used in the
c     equilibrium calculations. This list includes species needed for 
c     continuous opacity and damping calculations in addition to the ions and
c     molecules that have an affect of the partial pressures of the following:
c     H, He, C, N, O, Mg, Al, Si, P, S, Cl, Ca, Ti, V, Cr, and Fe. The 
c     molecules in this list were selected based on predicted partial pressures
c     for T > 3000 K. The cutoff was 1e-7 percent of the total gas pressure. 
c     The user is encouraged to check the completeness of this list for the 
c     physical conditions under consideration.
c
c     This routine also contains the molecular equilibrium constant data for 
c     the most common diatomic and triatomic molecules. The equilibrium 
c     constants were calculated from the parital pressures in the Phoenix 
c     (NextGen) equation of state table on June 27, 2005. The data below are 
c     the coefficients for polynomial fits to the constants and span the range 
c     1500 < T < 10000 K. The format is: molecule id, Do, coef(1:5) 
c     The constants are reconstructed by a polynomial expansion:
c     log10(Kp) = sum{i=1:5}{coef(i)*log10(theta)**(i-1)} - Do*theta
c******************************************************************************
      implicit real*8 (a-h,o-z)
      include 'Mol.com'


c*****Here is the default small list of ions and molecules.
c     P(H)  = p(H) + p(H+) + 2p(H_2) + p(CH) + p(NH) + p(OH) + p(MgH) + 2p(H_2O) + p(HF)
c     P(C)  = p(C) + p(C+) + p(CH) + p(C_2) + p(CN) + p(CO) + p(CO_2)
c     P(N)  = p(N) + p(N+) + p(NH) + p(CN) + 2p(N_2) + p(NO)
c     P(O)  = p(O) + p(O+) + p(OH) + p(CO) + p(ON) + 2p(O_2) + 2p(CO_2)
c     P(F)  = p(F) + p(F+) + p(HF)
c     P(Mg) = p(Mg) + p(Mg+) + p(MgH) + p(MgO)
c     P(Ti) = p(Ti) + p(Ti+) + p(TiO)
      data (smallmollist(i),i=1,110)/
     .       1.1,     6.1,     7.1,     8.1,    12.1,    22.1,
     .     101.0,   106.0,   107.0,   108.0,   109.0,   112.0,   
     .     606.0,   607.0,   608.0,   707.0,   708.0,   808.0, 
     .   10108.0, 60808.0,   812.0,   822.0,
     .    88*0.0/


c*****Here is the default large list of ions and molecules.
c     P(H)  = p(H) + p(H+) + 2p(H_2) + p(CH) + p(NH) + p(OH) + p(MgH) + p(AlH)
c                  + p(SiH) + p(PH) + p(SH) + p(ClH) + p(CaH) + p(CrH) 
c                  + p(FeH) + 2p(CH_2) + 2p(NH_2) + 2p(H_2O) + 2p(PH_2) 
c                  + 2p(SH_2) + p(HCO) + p(MgOH) + p(AlOH) + p(CaOH) + p(HF)
c     P(He) = p(He) + p(He+)
c     P(C)  = p(C) + p(C+) + p(CO) + p(CH) + 2p(CH_2) + p(HCO) + p(CN)
c                  + p(CS) + p(CO_2)
c     P(N)  = p(N) + p(N+) + 2p(N_2) + p(NH) + p(NH_2) + p(CN) + p(NO) 
c                  + p(SiO) + p(PN) + p(SN) 
c     P(O)  = p(O) + p(O+) + p(CO) + p(OH) + p(H_2O) + p(HCO) + p(MgOH) 
c                  + p(AlOH) + p(CaOH) + 2p(CO_2) + p(NO) + 2p(O_2)
c                  + p(MgO) + p(SiO) + p(PO) + p(SO) + p(TiO) + p(VO) + p(FeO)
c     P(F)  = p(F) + p(F+) + p(HF)
c     P(Mg) = p(Mg) + p(Mg+) + p(MgH) + p(MGOH) + p(MgO)
c     P(Al) = p(Al) + p(Al+) + p(AlH) + p(AlOH) 
c     P(Si) = p(Si) + p(Si+) + p(SiH) + p(SiO) + p(SiS)
c     P(P)  = p(P) + p(P+) + p(PH) + p(PH_2) + p(PN) + p(PO)
c     P(S)  = p(S) + p(S+) + p(SH) + p(SH_2) + p(SC) + p(SN) + P(SO) + p(SiS)
c     P(Cl) = p(Cl) + p(Cl+) + p(ClH)                         
c     P(Ca) = p(Ca) + P(Ca+) + p(CaH) + p(CaOH)               
c     P(Ti) = p(Ti) + p(Ti+) + p(TiO)                         
c     P(V)  = p(V) + p(V+) + p(VO)                            
c     P(Cr) = p(Cr) + p(Cr+) + p(CrH)                         
c     p(Fe) = p(Fe) + p(Fe+) + p(FeH) + p(FeO)                
      data (largemollist(i),i=1,110)/                         
     .       1.1,     2.1,     6.1,     7.1,     8.1,    12.1,
     .      13.1,    14.1,    15.1,    16.1,    17.1,    20.1,
     .      22.1,    23.1,    24.1,    26.1,                  
     .     101.0,   106.0,   107.0,   108.0,   109.0,   112.0,   
     .     113.0,   114.0,   115.0,   116.0,   117.0,   120.0,
     .     124.0,   126.0, 10106.0, 10107.0, 10108.0, 10115.0,
     .   10116.0, 10608.0, 10812.0, 10813.0, 10820.0,   606.0,
     .     607.0,   608.0,   616.0, 60808.0,   707.0,   708.0,
     .     714.0,   715.0,   716.0,   808.0,   812.0,   814.0,
     .     815.0,   816.0,   822.0,   823.0,   826.0,  1416.0,         
     .     52*0.0/ 


      data ((datmol(i,j),i=1,7),j=1,10)/                 
     1   101.0, 4.4781,12.1174, -1.0476,  1.6851, -5.5831,  4.0060,
     2   106.0, 3.4650,11.5335, -0.5211, -0.7475,  0.1494, -0.1967,
     3   107.0, 3.4700,11.4657, -0.7265, -0.6439,  0.0004,  0.1269,
     4   108.0, 4.3920,11.8018, -0.8525, -0.5525,  0.1625, -0.1935,
     5   109.0, 5.8690,12.2897, -0.9174, -0.6416,  0.1616, -0.1222,
     6   111.0, 1.8800,10.7189, -0.8053,  4.1674,-12.8321, 10.8590,
     7   112.0, 1.3400,10.2878, -0.3455,  0.1677, -3.8628,  4.7348,
     8   113.0, 3.0600,11.4876, -0.4024, -0.4809, -1.6283,  2.5415,
     9   114.0, 3.0600,11.2586, -0.6758, -0.5870,  0.0669,  0.3139,
     *   115.0, 3.3000,11.3387, -0.2112,  0.5964,  0.2027,  0.2323/
            data ((datmol(i,j),i=1,7),j=11,20)/                    
     1   116.0, 3.5500,11.4380, -0.7731, -0.4785,  0.1716, -0.2326,
     2   117.0, 4.4336,11.9042, -0.8250, -0.6309,  0.1545, -0.1999,
     3   120.0, 1.7000,10.1987, -0.9426,  1.8085, -4.6629,  3.4971,
     4   124.0, 2.1700,10.4501, -3.4047, -2.5032,  1.6933, -2.1073,
     5   125.0, 1.3100, 9.7219, -3.9379, -3.4116,  0.6378, -3.0173,
     6   126.0, 2.4100,12.1214,  0.9531,  2.3351, -0.2231,  3.0718,
     7   128.0, 2.7000,11.9592, -0.9476, -0.4685,  0.8228,  0.2487,
     8   129.0, 2.8400,11.3419, -1.3372, -0.6389,  1.5957, -0.4408,
     9 10106.0, 7.9400,23.8688, -1.7944,  4.4565,-10.8615,  6.6375,
     * 10107.0, 7.4400,23.7463, -1.7687,  4.2349,-12.2375,  8.6009/
            data ((datmol(i,j),i=1,7),j=21,30)/                    
     1 10108.0, 9.6221,24.6063, -1.8370,  3.9590,-10.9331,  7.4896,
     2 10115.0, 6.4895,23.0957, -2.0802,  5.0222,-10.7703,  5.8343,
     3 10116.0, 7.5946,23.8619, -1.7009,  4.4792,-11.4475,  7.2724,
     4 10508.0,12.7425,25.2365, -1.2673,  5.1472,-12.0672,  7.6325,
     5 10607.0,13.2363,25.1400, -1.3548,  5.4650,-12.6262,  7.5607,
     6 10608.0,11.8560,24.6494, -1.6665,  4.8174,-10.9079,  6.7311,
     7 10708.0, 8.6140,24.4465, -1.3261, -0.5924,  0.0156, -0.7950,
     8 10811.0, 8.0150,23.3475, -1.4238,  7.1752,-17.8186, 13.4471,
     9 10812.0, 8.0735,23.3316, -1.3691,  6.1267,-15.3175, 11.1568,
     * 10813.0,10.1252,25.2641, -1.4342,  5.1091,-13.2682,  9.2414/
            data ((datmol(i,j),i=1,7),j=31,40)/                    
     1 10819.0, 8.1892,23.3235, -1.9306,  8.6260,-17.6081, 10.5153,
     2 10820.0, 8.7035,23.2006, -1.9644,  8.3448,-17.4669, 10.8898,
     3 10856.0, 9.0621,23.3508, -2.9133,  7.9864,-14.7824, 10.4060,
     4   508.0, 8.2800,12.6247, -0.6958, -0.4147,  0.2800, -0.4535,
     5   606.0, 6.2100,12.4677, -0.4434, -0.0516, -0.1304, -0.0555,
     6   607.0, 7.7600,12.4439, -0.4823, -0.4724, -1.1721,  1.3124,
     7   608.0,11.0920,13.2412, -0.8502, -0.0724, -0.2098, -0.2096,
     8   614.0, 4.6400,11.8943, -1.2037,  2.5280, -5.4728,  3.5183,
     9   615.0, 6.8950,13.0550,  1.1581,  2.9371,  0.6616,  1.9298,
     *   616.0, 7.3550,12.8508, -0.7689, -0.4254,  1.9738, -2.7599/
            data ((datmol(i,j),i=1,7),j=41,50)/                    
     1 60606.0,13.8610,26.3157, -1.9852,  4.7933,-10.1191,  6.4350,
     2 60614.0,13.1966,25.7482, -0.8673,  6.1588,-14.8609, 10.8245,
     3 60717.0,12.2076,25.3546, -0.9498,  6.1809,-13.9272,  8.7748,
     4 60808.0,16.5382,26.9665, -1.5802,  5.2319,-12.8507,  7.2799,
     5 61616.0,11.9993,26.2469, -1.0515,  6.3688,-12.9191,  7.5525,
     6   707.0, 9.7594,12.8868, -0.8861,  0.2644, -1.4001,  0.9645,
     7   708.0, 6.4968,11.9347, -0.7631,  0.0848, -0.8149,  0.4636,
     8   709.0, 2.8190,11.4441, -1.2536, -0.9028, -0.5407, -0.8453,
     9   714.0, 4.5100,11.9190, -0.7171, -0.7889, -1.6147,  1.2567,
     *   715.0, 7.1110,12.1020, -1.2837,  0.4612, -1.4609,  0.1464/
            data ((datmol(i,j),i=1,7),j=51,60)/                    
     1   716.0, 4.8000,11.9264, -1.0597,  2.7095, -6.0355,  3.6858,
     2 70708.0,11.4400,25.8228, -1.8022,  5.4142,-13.7572,  7.8651,
     3 70808.0, 9.6210,25.4890, -2.1013,  4.7855,-12.0992,  6.7146,
     4   808.0, 5.1156,12.8763, -0.4923, -0.5474,  0.2097, -0.3337,
     5   811.0, 3.0790,11.1443,  0.1006,  1.3407, -0.8726,  1.1604,
     6   812.0, 3.5300,10.7965, -0.4336,  4.5543, -9.6555,  6.8587,
     7   813.0, 5.2700,12.2111, -0.5018, -0.0903, -1.3613,  1.7974,
     8   814.0, 8.2600,12.9276, -0.7698, -0.5315,  2.1774, -2.8482,
     9   815.0, 6.0710,11.9149, -1.0730,  0.4169, -0.8595, -0.0207,
     *   816.0, 5.3590,12.3424, -0.8964,  2.5742, -6.2111,  3.7515/
            data ((datmol(i,j),i=1,7),j=61,70)/                    
     1   817.0, 2.7450,11.8129, -1.0573,  2.2239, -5.7356,  3.2844,
     2   820.0, 4.5310,11.7806,  1.6875,  3.1813, -5.1106,  4.8826,
     3   821.0, 6.9600,12.5239, -1.2329,  1.5239, -1.9903,  0.4735,
     4   822.0, 6.8700,12.3189, -1.8737,  4.2408, -7.4936,  3.3890,
     5   823.0, 6.4100,12.8103, -0.5642, -0.5910, -2.5261,  3.9417,
     6   826.0, 4.2000,12.5333, -1.0582,  1.0158, -1.5253,  0.7221,
     7   839.0, 7.2900,12.4455, -1.3319,  1.0692,  0.0949, -2.0131,
     8   840.0, 7.8500,12.4688, -1.0832,  0.0935, -0.2133,  0.5480,
     9   856.0, 5.4410,11.5981, -2.2831, -1.3418,  4.2093, -4.0635,
     *   857.0, 8.2300,12.1926,  0.1654, -0.8084, -1.0001,  1.1994/
            data ((datmol(i,j),i=1,7),j=71,80)/                    
     1 80814.0,13.0355,26.5705, -1.1245,  6.0979,-12.6131,  7.8414,
     2 80816.0,11.1405,25.9338, -1.3799,  5.5465,-11.7480,  7.0670,
     3 80822.0,13.2915,25.9435, -2.1804,  7.1450,-13.0296,  7.9278,
     4 80839.0,15.2000,25.8616, -1.4066, -0.5348,  2.4526, -1.0943,
     5 80840.0,14.4650,25.6438, -2.2794,  6.4569,-11.9176,  7.3456,
     6 80857.0,21.1510,31.0796, 10.7083, 13.0309,  9.1626, 10.4251,
     7 81313.0,10.9653,24.8867, -0.8364,  6.6875,-15.6083, 11.6178,
     8   909.0, 1.5920,12.6197, -0.4363, -0.5840,  0.4907, -0.6261,
     9   911.0, 4.9530,11.4755, -0.4941,  0.6264, -1.1793,  0.5988,
     *   912.0, 3.2000, 9.4953, -4.2045, -4.0612, -3.2308, -3.0520/
            data ((datmol(i,j),i=1,7),j=81,90)/                    
     1   913.0, 6.8900,12.2405, -0.4662, -0.3499, -0.6568,  1.0680,
     2   914.0, 5.5700,12.0156, -0.5029, -0.1059,  0.3137,  0.0030,
     3   916.0, 3.3380,11.6730, -0.9068, -0.8140, -0.0380, -0.8173,
     4   917.0, 2.6160,12.2059,  0.4295, -3.9612,  6.8690, -4.3459,
     5  1111.0, 0.7300,10.2142, -0.5498,  1.0576, -2.8013,  1.4272,
     6  1117.0, 4.2300,11.0824, -0.4354,  1.4015, -6.7895,  7.3949,
     7  1216.0, 2.4000,11.3114, -0.5242,  0.5655, -3.1955,  3.8100,
     8  1217.0, 2.7010,10.2253, -1.7707, -1.1903, -1.3832, -0.9560,
     9  1313.0, 1.5500,11.3645, -0.1608,  0.1321, -3.2955,  4.3483,
     *  1316.0, 3.8400,11.9118, -0.4891, -0.0108, -1.2859,  1.7739/
            data ((datmol(i,j),i=1,7),j=91,100)/                   
     1  1317.0, 5.1200,11.8263, -0.3140, -1.0244,  0.8982, -0.1197,
     2  1414.0, 3.2100,12.1806, -0.6731, -0.1732,  0.0349,  0.4326,
     3  1416.0, 6.4200,12.6372, -0.7285, -0.0244,  0.8566, -1.1574,
     4  1417.0, 4.0020,11.7232, -0.2951,  0.1824,  0.8534, -0.3405,
     5  1515.0, 5.0330,12.2546, -1.1717,  1.4643, -1.9459,  0.8396,
     6  1516.0, 5.6370,12.5482,  1.4333,  3.0823,  0.9032,  2.0434,
     7  1616.0, 4.3693,12.3238, -0.9114,  2.7995, -6.1180,  3.5118,
     8  1617.0, 2.7490,11.8411, -0.0001,  0.5709,  0.7753,  0.0580,
     9  1622.0, 4.7500,11.6639, -1.3994,  1.3016, -1.2659,  0.5035,
     *  1717.0, 2.4760,12.2664, -0.5351, -0.6211,  0.7092, -0.7675/
            data ((datmol(i,j),i=1,7),j=101,110)/                  
     1  2016.0, 3.4600,10.8548,  0.2371,  3.1884, -8.1647,  5.1342,
     2  2616.0, 3.1000,11.3327, -1.5519,  0.5150, -1.5570, -0.0107,
     3  56*0.0/   
                                                 
      end   








