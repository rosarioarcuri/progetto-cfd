//mesh per naca 4418 (flap) da solo

h = 0.005;
H = 3 ;
R = 30;

//=================================================POINTS
Point(1) = {1.0002, 0.0017, 0.0, h};
Point(2) = {0.9513, 0.0171, 0.0, h};
Point(3) = {0.9021, 0.0314, 0.0, h};
Point(4) = {0.86, 0.04354, 0.0, h};
Point(5) = {0.825, 0.048475, 0.0, h};
Point(6) = {0.79, 0.05145, 0.0, h};
Point(7) = {0.755, 0.05166, 0.0, h};
Point(8) = {0.7375, 0.0504, 0.0, h};
Point(9) = {0.72, 0.04802, 0.0, h};
Point(10) = {0.7025, 0.04431, 0.0, h};
Point(11) = {0.685, 0.038885, 0.0, h};
Point(12) = {0.67625, 0.03521, 0.0, h};
Point(13) = {0.6675, 0.030625, 0.0, h};
Point(14) = {0.65875, 0.0245, 0.0, h};
Point(15) = {0.654375, 0.02016, 0.0, h};
Point(16) = {0.65, 0.007, 0.0, h};
Point(17) = {0.654375, -0.000385, 0.0, h};
Point(18) = {0.65875, -0.003465, 0.0, h};
Point(19) = {0.6675, -0.00721, 0.0, h};
Point(20) = {0.67625, -0.009345, 0.0, h};
Point(21) = {0.685, -0.01071, 0.0, h};
Point(22) = {0.7969, -0.0126, 0.0, h};
Point(23) = {0.8979, -0.007, 0.0, h};
Point(24) = {0.9487, -0.0043, 0.0, h};
Point(25) = {0.999, -0.0017, 0.0, h};

//farfield

Point(300) ={0,0,0,H};
Point(301) ={R,0,0,H};
Point(302) ={0,R,0,H};
Point(303) ={-R,0,0,H};
Point(304) ={0,-R,0,H};

// linee ======================================================

Spline(1)={1:25}; //spline del profilo
Line(2)={25,1}; //b.u. non appuntito

//cerhio FARFIELD

Circle(3) = {301,300,302};
Circle(4) = {302,300,303};
Circle(5) = {303,300,304};
Circle(6) = {304,300,301};

//line loops=========================================================

Line Loop(1)={1,2};
Line Loop(2) ={-6,-5,-4,-3};

//surfaces===========================================================
Plane Surface(1000)= {1,2};

Physical Surface(1)={1000};
Physical Line("FARFIELD") = {3,4,5,6};
Physical Line("AIRFOIL") = {1,2};
