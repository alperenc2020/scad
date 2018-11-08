scale([2,2,3]) {
    difference() {
        intersection() {
          cube([20,20,20], center=true);
          sphere(14);
        }
        translate([0,0,-8]) 
            cylinder(r=8,h=22);
    }
}
