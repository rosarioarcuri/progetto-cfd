// ===========================================
// ==================================MESH FILE
// ===========================================

h = 0.005;H = 3;R = 10;// =====================================POINTS
Point(1) = {0.825, 0.0241, 0.0, h};
Point(2) = {0.821, 0.0245, 0.0, h};
Point(3) = {0.813, 0.025, 0.0, h};
Point(4) = {0.8025, 0.0252, 0.0, h};
Point(5) = {0.79, 0.0252, 0.0, h};
Point(6) = {0.775, 0.0249, 0.0, h};
Point(7) = {0.755, 0.0235, 0.0, h};
Point(8) = {0.73, 0.0195, 0.0, h};
Point(9) = {0.707, 0.012, 0.0, h};
Point(10) = {0.69, 0.0023, 0.0, h};
Point(11) = {0.6785, -0.01, 0.0, h};
Point(12) = {0.675, -0.02, 0.0, h};
Point(13) = {0.675, -0.026, 0.0, h};
Point(14) = {0.675, -0.0287, 0.0, h};
Point(15) = {0.65, -0.0331, 0.0, h};
Point(16) = {0.6, -0.0389, 0.0, h};
Point(17) = {0.55, -0.0423, 0.0, h};
Point(18) = {0.5, -0.0443, 0.0, h};
Point(19) = {0.45, -0.0455, 0.0, h};
Point(20) = {0.4, -0.0462, 0.0, h};
Point(21) = {0.35, -0.0465, 0.0, h};
Point(22) = {0.3, -0.0463, 0.0, h};
Point(23) = {0.25, -0.0456, 0.0, h};
Point(24) = {0.2, -0.0441, 0.0, h};
Point(25) = {0.15, -0.0416, 0.0, h};
Point(26) = {0.1167, -0.0391, 0.0, h};
Point(27) = {0.11, -0.0386, 0.0, h};
Point(28) = {0.075, -0.0346, 0.0, h};
Point(29) = {0.05, -0.0304, 0.0, h};
Point(30) = {0.0325, -0.0263, 0.0, h};
Point(31) = {0.02, -0.0222, 0.0, h};
Point(32) = {0.0125, -0.0187, 0.0, h};
Point(33) = {0.007, -0.015, 0.0, h};
Point(34) = {0.004, -0.01185, 0.0, h};
Point(35) = {0.0015, -0.0075, 0.0, h};
Point(36) = {0.00035, -0.0035, 0.0, h};
Point(37) = {0, 0, 0.0, h};
Point(38) = {0.00035, 0.0035, 0.0, h};
Point(39) = {0.0015, 0.0075, 0.0, h};
Point(40) = {0.004, 0.01185, 0.0, h};
Point(41) = {0.007, 0.015, 0.0, h};
Point(42) = {0.0125, 0.0187, 0.0, h};
Point(43) = {0.02, 0.0222, 0.0, h};
Point(44) = {0.0325, 0.0263, 0.0, h};
Point(45) = {0.05, 0.0304, 0.0, h};
Point(46) = {0.075, 0.0346, 0.0, h};
Point(47) = {0.11, 0.0386, 0.0, h};
Point(48) = {0.15, 0.0416, 0.0, h};
Point(49) = {0.2, 0.0441, 0.0, h};
Point(50) = {0.25, 0.0456, 0.0, h};
Point(51) = {0.3, 0.0463, 0.0, h};
Point(52) = {0.35, 0.0465, 0.0, h};
Point(53) = {0.4, 0.0462, 0.0, h};
Point(54) = {0.45, 0.0456, 0.0, h};
Point(55) = {0.5, 0.0444, 0.0, h};
Point(56) = {0.55, 0.0429, 0.0, h};
Point(57) = {0.6, 0.0409, 0.0, h};
Point(58) = {0.65, 0.0384, 0.0, h};
Point(59) = {0.675, 0.0369, 0.0, h};
Point(60) = {0.705, 0.0352, 0.0, h};
Point(61) = {0.73, 0.03325, 0.0, h};
Point(62) = {0.755, 0.03125, 0.0, h};
Point(63) = {0.775, 0.0296, 0.0, h};
Point(64) = {0.79, 0.02813, 0.0, h};
Point(65) = {0.8025, 0.02705, 0.0, h};
Point(66) = {0.813, 0.02605, 0.0, h};
Point(67) = {0.821, 0.0253, 0.0, h};
Point(68) = {0.825, 0.0249, 0.0, h};
Point(69) = {0.825, 0.0241, 0.0, h};

// farfield
Point(200) = {0, 0, 0, H};
Point(201) = {R, 0, 0, H};
Point(202) = {0, R, 0, H};
Point(203) = {-R, 0, 0, H};
Point(204) = {0, -R, 0, H};

// =====================================LINES

Spline(1) = {1:13};
Spline(4) = {13,15:69,1};


// farfield
Circle(6) = {201, 200, 202};
Circle(7) = {202, 200, 203};
Circle(8) = {203, 200, 204};
Circle(9) = {204, 200, 201};


// =====================================LINE LOOPS

Line Loop(1) = {1, 4}; //airfoil
Line Loop(2) = {-9, -8, -7, -6}; //farfield


// =====================================SURFACE

Plane Surface(1000) = {1, 2}; //domain

Physical Surface(1) = {1000};
Physical Line("FARFIELD") = {6,7,8,9};
Physical Line("AIRFOIL") = {1,4};


