
intersection() {cube(12, center=true); sphere(8);}

difference() {
    union() {
    sphere(20);
    translate([0,0,20 *sin(30)])
    cylinder(30,20 * cos(30),0);
}
rotate([45,0,0])
translate([-20,0,0])
cube([40,5,40]);
}

!sphere(1,center=true);
