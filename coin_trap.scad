// Coin Trap; a 3d-printed cage to hold a coin 
// by AlperenCalis
// v. 0.1, 5 December, 2018

//parameters --------------------------------------------------
$fa=1;
$fs=1;
quarter_d = 23.88; //diameter of a quarter
quarter_th = 1.58; // thickness of a quarter
penny_d = 19.05; //thickness of a quarter
penny_th = 1.45; //thickness of a penny
gap=2;


//render ---------------------------------------------------------------
trap(quarter_d, quarter_th);
coin(quarter_d, quarter_th);
base(quarter_d);
    
//modules-------------------------------------------------------
//the base
module base(quarter_d) {

    difference(){
        sphere(d=quarter_d);  
        translate([0,0,-quarter_d/2]) cube(size=quarter_d, center = true);
         rotate([54.74,0,0]){
            rotate([0,0,45]){
        translate([quarter_d/2,quarter_d/2,quarter_d*.5]) {    
            minkowski() {
                cube(size=.8*quarter_d, center = true);
                sphere(r=.1*quarter_d);
    }        
    }
}
}
}
}
//the coin
module coin(quarter_d,quarter_th) {
  translate([0,0,quarter_d/2]){
    %cylinder(r=quarter_d/2, h=quarter_th, center = true); 
}
}



//the trap

module trap(quarter_d, quarter_th) {
translate([0,0,quarter_d/2]){
difference() {
    minkowski() {
    cube(size=.8*quarter_d, center = true);
    sphere(r=.1*quarter_d);
    }        
    cylinder(r=quarter_d/3, h= quarter_d*1.5, center=true);
    rotate([90,0,0]) { 
        cylinder(r=quarter_d/3, h= quarter_d*1.5, center=true);
    }
    rotate([0,90,0]) { 
        cylinder(r=quarter_d/3, h= quarter_d*1.5, center=true);
    }
    sphere(d=quarter_d+gap);
    translate([quarter_d*.85,0,0]) sphere(r=quarter_d/2);
    translate([0,quarter_d*.85,0]) sphere(r=quarter_d/2);
    translate([0,0,quarter_d*.85]) sphere(r=quarter_d/2);
    translate([0,0,-quarter_d*.85]) sphere(r=quarter_d/2);
    translate([0,-quarter_d*.85,0]) sphere(r=quarter_d/2);
    translate([-quarter_d*.85,0,0]) sphere(r=quarter_d/2);
}
}
}