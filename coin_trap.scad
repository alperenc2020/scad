// Coin Trap; a 3d-printed cage to hold a coin 
// by AlperenCalis
// v. 0.1, 21 November, 2018

//parameters
$fa=1;
$fs=1;
quarter_d = 23.88; // diameter of a quarter
quarter_th = 1.58; // thickness of a quarter
penny_d = 19.05;
penny_th = 1.45;
gap= 1;
// render----------------------------------------------------
trap(quarter_d,quarter_th)
translate([0,-30,0]) trap(penny_d,penny_th);
!base(quarter_d);
// modules---------------------------------------------------
module base(coin_d) {
    sphere(d=coin_d);
   
}
module coin(coin_d,coin_th) {
%cylinder(d=coin_d,h=coin_th, center=true);
}

module trap(coin_d,coin_th) {
    translate([0,0,coin_d/2]) {
        coin(coin_d,coin_th);
difference() {
    minkowski(){
        cube(size=.8*coin_d, center=true);
        sphere(r=coin_d*0.1);
        }
   translate([0,0,-coin_d]) cylinder(h=coin_d*2,d=coin_d*0.66);
    rotate([90,0,0]) translate([0,0,-coin_d]) cylinder(h=coin_d*2,d=coin_d*0.66);
    rotate([0,90,0]) translate([0,0,-coin_d]) cylinder(h=coin_d*2, d=coin_d*.66);
    sphere(d=coin_d+gap);
    translate([coin_d*0.85,0,0]) sphere(d=coin_d);
    translate([coin_d*-0.85,0,0]) sphere(d=coin_d);
    translate([0,coin_d*0.85,0,]) sphere(d=coin_d);
    translate([0,coin_d*-0.85,0,]) sphere(d=coin_d);
    translate([0,0,coin_d*0.85]) sphere(d=coin_d);
    translate([0,0,coin_d*-0.85]) sphere(d=coin_d);
}
}
}