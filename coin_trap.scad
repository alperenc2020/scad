// Coin Trap; a 3d-printed cage to hold a coin 
// by AlperenCalis
// v. 0.1, 21 November, 2018

//parameters
$fa=1;
$fs=1;
coin_d = 23.88; // diameter of a quarter
coin_th = 1.58; // thickness of a quarter
gap= 1;

// modules---------------------------------------------------
// the coin
module coin(coin_d,coin_th) {
%cylinder(d=coin_d,h=coin_th, center=true);
}
// the trap
difference() {
    minkowski(){
        cube(size=.8*coin_d, center=true);
        sphere(r=coin_d*0.1);
    }
   translate([0,0,-coind_d]) cylinder(h=coin_d*2,d=coin_d*0.66);
    rotate([90,0,0]) translate([0,0,-coin_d]) cylinder(h=coin_d*2,d=coin_d*0.66);
    rotate([0,90,0]) translate([0,0,-coin_d]) cylinder(h=coin_d*2, r=coin_d*.33);
}