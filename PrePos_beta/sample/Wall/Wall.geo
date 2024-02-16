SetFactory("OpenCASCADE");

WW = 1.0;   // 壁の厚さ
WL = 8.0;   // 壁の幅（Y方向）
BW = 5.0;   // 基礎のX方向長さ
BH = 1.0;   // 基礎の厚さ（Z方向）
SW = 10.0;  // 地盤のX方向長さ
SL = 6.0;   // 基礎⇒地盤（Y方向）
SH = 10.0;  // 地盤の厚さ（Z方向）マイナス方向へ
WH = 5.0;   // 壁の高さ（Z方向）

NWW = 3;    // 壁の厚さ方向の分割数（X方向）
NWL = 3;    // 壁の幅の分割数（Y方向）
NBW = 3;    // 壁⇒基礎端部の間の分割数（X方向）
NSW = 3;    // 基礎⇒地盤の間の分割数（X方向）
NSL = 3;    // 基礎⇒地盤の間の分割数（Y方向）
NSH = 5;    // 地盤の厚さの分割数
NBH = 2;    // 基礎の厚さの分割数
NWH = 4;    // 壁の高さの分割数

Point(1)   = {0,    WL/2, 0};  // 壁の始点
Point(2)   = {WW/2, WL/2, 0};  // 壁の厚さ(X方向)
Point(3)   = {BW/2, WL/2, 0};  // 基礎のX方向長さ
Point(4)   = {SW/2, WL/2, 0};  // 地盤のX方向長さ

Line(1) = {1, 2};
Line(2) = {2, 3};
Line(3) = {3, 4};
Transfinite Curve {1} = NWW Using Bump 1;
Transfinite Curve {2} = NBW Using Bump 1;
Transfinite Curve {3} = NSW Using Bump 1;

// 地盤を下方向へ押出し（Z方向）
Extrude {0, 0, -SH} {
  Curve{1}; Curve{2}; Curve{3}; Layers {NSH}; Recombine;
}
// 基礎を上方向へ押出し（Z方向）
Extrude {0, 0, BH} {
  Curve{1}; Curve{2}; Layers {NBH}; Recombine;
}

// 壁を上方向へ押出し
Extrude {0, 0, WH} {
  Curve{13}; Layers {NWH}; Recombine;
}

// 壁の幅方向へ押出し
Extrude {0, -WL/2, 0} {
  Surface{1:6}; Layers {NWL}; Recombine;
}
// 地盤のY方向へ押出し
Extrude {0, SL, 0} {
  Surface{3}; Surface{2}; Surface{1}; Layers {NSL}; Recombine;
}

// ----- ("要素キーワード", 材料番号) -----
// ※要素キーワードは任意の5文字＆重複はNG
// ※材料番号は、HEATのMTRL & INDPと一致させる
// 
// ----- 要素の設定 -----
Physical Volume("CON1") = {5, 4};              // 基礎
Physical Volume("CON2") = {6};                 // 壁
Physical Volume("SOIL1") = {1, 2, 3, 9, 8, 7};  // 地盤
// ----- 節点固定 -----
Physical Surface("FIXX") = { 7, 20, 27, 40};          // MECH
Physical Surface("FIXY") = {11, 15, 19, 23, 26, 30};  // MECH
Physical Surface("FIXZ") = {10, 14, 18, 34, 38, 42};  // MECH, HEAT, HYGR

// ----- TRNS -----
Physical Surface("AIR1") = {17, 33, 37, 41};  // 地盤上面のTRNS
Physical Surface("AIR2") = {4, 5, 24, 25};    // 基礎表面のTRNS
Physical Surface("AIR3") = {22};              // 基礎表面のTRNS(inner)
Physical Surface("AIR4") = {6, 28, 29};       // 壁表面のTRNS


