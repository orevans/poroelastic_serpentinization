lc = .04;

Point(1) = {-0.65,0.0,0,0.01}; 
Point(2) = {0.65,0.0,0,0.01}; 
Point(3) = {-0.65,-1,0,lc};     
Point(4) = {0.65,-1,0,lc}; 

Line(1) = {1,2}; 
Line(2) = {2,4}; 
Line(3) = {4,3}; 
Line(4) = {3,1};
Line Loop(5) = {1,2,3,4}; 
Plane Surface(6) = {5};

Physical Line(4) = {1};
Physical Line(2) = {2};
Physical Line(3) = {3};
Physical Line(1) = {4};
Physical Surface(1) = {6};

Field[1] = MathEval;
Field[1].F = "(1. - 0.999*Exp(-x*x/1.5)*0.5*(1. + Tanh((y + 0.65)/0.01)))";
Field[2] = Min;
Field[2].FieldsList = {1};
Background Field = 2;
