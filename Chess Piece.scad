union() {
    //tepe
    translate([0,0,120])
difference() {
    union() {
    sphere(20);
    translate([0,0,20 *sin(30)])
    cylinder(30,20 * cos(30),0);
        
        //topak
        translate([0,0,30+20 *sin(30)])
           sphere(6);
        
    }
    //cut out slot
    rotate([45,0,0])
     translate([-20,0,0])
       cube([40,5,40]);
  
} 
//boyun
cylinder(120,18,12);

//govde
cylinder (20,35,25);

//Taban
translate ([0,0,90])
intersection() {
    cylinder(20,20,0);
    translate([0,0,7])
    mirror([0,0,1])
    cylinder(20,20,0);
}
}