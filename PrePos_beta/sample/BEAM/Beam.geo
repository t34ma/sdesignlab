SetFactory("OpenCASCADE");

HH = 1.00;  // —À‚Ì‚‚³(m)
WW = 0.50;  // —À‚Ì•(m)
LL = 5.00;  // —À‚Ì’·‚³(m)
S1 = 0.20;  // Ú‰×”Â‚Ì•(m)
S2 = 0.05;  // Ú‰×”Â‚ÌŒú‚³(m)
RR = 0.50;  // x“_ˆÊ’u(’[•”‚©‚çRR(m))
PP = 1.00;  // Ú‰×“_ˆÊ’u(’†‰›‚©‚çPP(m))

XN1 = 3;
XN2 = 1;
XN3 = 6;
XN4 = 1;
XN5 = 3;
YN1 = 3;
ZN1 = 5;

Point(1)   = {0,       0,  0};  // ’[•”i‰ºj
Point(2)   = {RR-S1/2, 0,  0};  // Ú‰×”Â‚Ì’[•”
Point(3)   = {RR-S1/2, 0, HH};  // 
Point(4)   = {0,       0, HH};  // 
Point(5)   = {RR,  0, 0}; // x“_(‰º)
Point(6)   = {RR,  0,HH}; // x“_(ã)
Point(7)   = {RR+S1/2, 0,  0};
Point(8)   = {RR+S1/2, 0, HH};

Point(9)   = {LL/2-PP/2-S1/2, 0,  0};
Point(10)  = {LL/2-PP/2-S1/2, 0, HH};
Point(11)  = {LL/2-PP/2, 0,  0};
Point(12)  = {LL/2-PP/2, 0, HH};
Point(13)  = {LL/2-PP/2+S1/2, 0,  0};
Point(14)  = {LL/2-PP/2+S1/2, 0, HH};
Point(15)  = {LL/2, 0,  0};
Point(16)  = {LL/2, 0, HH};
// ----- Ú‰×”Â -----
Point(17)  = {RR-S1/2, 0, -S2};
Point(18)  = {RR,      0, -S2};
Point(19)  = {RR+S1/2, 0, -S2};
Point(20)  = {LL/2-PP/2-S1/2, 0, HH+S2};
Point(21)  = {LL/2-PP/2,      0, HH+S2};
Point(22)  = {LL/2-PP/2+S1/2, 0, HH+S2};
// ----- “S‹Ø -----
Point(23)  = {0,     0.07, 0.12};
Point(24)  = {LL/2,  0.07, 0.12};
Point(25)  = {0,     0.43, 0.12};
Point(26)  = {LL/2,  0.43, 0.12};

// ----- ’[•”`x“_”Â ----- 
Line(1) = {1, 2};
Line(2) = {2, 3};
Line(3) = {3, 4};
Line(4) = {4, 1};
// ----- x“_ -----
Line(5) = {2, 5};
Line(6) = {5, 6};
Line(7) = {6, 3};
// ----- x“_`x“_”Â -----
Line(8) = {5, 7};
Line(9) = {7, 8};
Line(10)= {8, 6};
// -----  -----
Line(11)= {7, 9};
Line(12)= {9,10};
Line(13)= {10,8};
// -----  -----
Line(14)= { 9,11};
Line(15)= {11,12};
Line(16)= {12,10};
// -----  -----
Line(17)= {11,13};
Line(18)= {13,14};
Line(19)= {14,12};
// -----  -----
Line(20)= {13,15};
Line(21)= {15,16};
Line(22)= {16,14};
// ----- Ú‰×”Â(‰º) -----
Line(23)= { 2,17};
Line(24)= {17,18};
Line(25)= {18, 5};
Line(26)= {18,19};
Line(27)= {19, 7};
// ----- Ú‰×”Â(ã) -----
Line(28)= {10,20};
Line(29)= {20,21};
Line(30)= {21,12};
Line(31)= {21,22};
Line(32)= {22,14};
// ----- “S‹Ø -----
Line(33) = {23, 24};
Line(34) = {25, 26};
// ----- —À -----
Curve Loop(1)={ 1, 2, 3, 4 };
Curve Loop(2)={ 5, 6, 7,-2 };
Curve Loop(3)={ 8, 9,10,-6 };
Curve Loop(4)={11,12,13,-9 };
Curve Loop(5)={14,15,16,-12};
Curve Loop(6)={17,18,19,-15};
Curve Loop(7)={20,21,22,-18};
// ----- Ú‰×”Â -----
Curve Loop( 8)={ 23, 24, 25,-5 };
Curve Loop( 9)={-25, 26, 27,-8};
Curve Loop(10)={-16,-30,-29,-28};
Curve Loop(11)={-19,-32,-31,-30};
// ----- —À -----
Plane Surface(1) = {1};
Plane Surface(2) = {2};
Plane Surface(3) = {3};
Plane Surface(4) = {4};
Plane Surface(5) = {5};
Plane Surface(6) = {6};
Plane Surface(7) = {7};
// ----- Ú‰×”Â -----
Plane Surface( 8) = { 8};
Plane Surface( 9) = { 9};
Plane Surface(10) = {10};
Plane Surface(11) = {11};
// ----- —À -----
Transfinite Curve{ 1} = XN1 Using Bump 1;
Transfinite Curve{ 3} = XN1 Using Bump 1;
Transfinite Curve{ 5} = XN2 Using Bump 1;
Transfinite Curve{ 7} = XN2 Using Bump 1;
Transfinite Curve{ 8} = XN2 Using Bump 1;
Transfinite Curve{10} = XN2 Using Bump 1;
Transfinite Curve{11} = XN3 Using Bump 1;
Transfinite Curve{13} = XN3 Using Bump 1;
Transfinite Curve{14} = XN4 Using Bump 1;
Transfinite Curve{16} = XN4 Using Bump 1;
Transfinite Curve{17} = XN4 Using Bump 1;
Transfinite Curve{19} = XN4 Using Bump 1;
Transfinite Curve{20} = XN5 Using Bump 1;
Transfinite Curve{22} = XN5 Using Bump 1;

Transfinite Curve{ 2} = ZN1 Using Bump 1;
Transfinite Curve{ 4} = ZN1 Using Bump 1;
Transfinite Curve{ 6} = ZN1 Using Bump 1;
Transfinite Curve{ 9} = ZN1 Using Bump 1;
Transfinite Curve{12} = ZN1 Using Bump 1;
Transfinite Curve{15} = ZN1 Using Bump 1;
Transfinite Curve{18} = ZN1 Using Bump 1;
Transfinite Curve{21} = ZN1 Using Bump 1;
// ----- Ú‰×”Â -----
Transfinite Curve{23} =   1 Using Bump 1;
Transfinite Curve{24} = XN2 Using Bump 1;
Transfinite Curve{25} =   1 Using Bump 1;
Transfinite Curve{26} = XN2 Using Bump 1;
Transfinite Curve{27} =   1 Using Bump 1;
Transfinite Curve{28} =   1 Using Bump 1;
Transfinite Curve{29} = XN4 Using Bump 1;
Transfinite Curve{30} =   1 Using Bump 1;
Transfinite Curve{31} = XN4 Using Bump 1;
Transfinite Curve{32} =   1 Using Bump 1;

Transfinite Surface { 1}; Recombine Surface { 1};
Transfinite Surface { 2}; Recombine Surface { 2};
Transfinite Surface { 3}; Recombine Surface { 3};
Transfinite Surface { 4}; Recombine Surface { 4};
Transfinite Surface { 5}; Recombine Surface { 5};
Transfinite Surface { 6}; Recombine Surface { 6};
Transfinite Surface { 7}; Recombine Surface { 7};
Transfinite Surface { 8}; Recombine Surface { 8};
Transfinite Surface { 9}; Recombine Surface { 9};
Transfinite Surface {10}; Recombine Surface {10};
Transfinite Surface {11}; Recombine Surface {11};

Extrude {0, WW, 0} {
  Surface{1}; Surface{2}; Surface{3}; Surface{4}; Surface{5}; Surface{6}; Surface{7}; Surface{8}; Surface{9}; Surface{10}; Surface{11}; Layers {YN1}; Recombine;
}


Physical Surface("FIXX") = {38};
Physical Point("FIXY") = {18};
Physical Line("FIXZ") = {75};
Physical Line("FIXP") = {83};
Physical Volume("CON1") = {1,2,3,4,5,6,7};
Physical Volume("STEEL")= {8,9,10,11};
Physical Line("RBR1") = {33,34};

