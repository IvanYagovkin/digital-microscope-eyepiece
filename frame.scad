use <smartphone.scad>
use <ocular.scad>

phone_height = 147
phone_width = 71;




translate([phone_height/2-23/2-19,phone_width/2-23/2-2,35/2+15])
rotate([180,0,0])
ocular();
frame1();
translate([0,25,3])
color("red")
corner(thickness=20);

difference(){
    translate([phone_height/2-14, 22.5, 11.5])
    cube([phone_height/2,phone_width, 3],center=true);
    translate([phone_height/2-23/2-19,phone_width/2-23/2-2,35/2])
    cylinder(d=23-0.5-3,h=40,center=true);
}
module frame1(){
    difference(){
        color("green")
        translate([phone_height/2-phone_height/4+10,10,0])
        cube([phone_height/2,phone_width+10, 10], center=true);
        scale([1,1,2])
        block();
    }
}
module corner(thickness){
    translate([phone_height/2+20,0,0])
    frame2(thickness);
    
    translate([phone_height/2 - 13.5, phone_width/2,0])
    rotate([0,0,90])
    frame2(thickness);

}
module frame2(thickness){
    hull(){
        translate([5,phone_width/2,0])
        cylinder(d=5, h=thickness,center=true,$fn=32);
        
        mirror([1,0,0])
        translate([5,phone_width/2,0])
        cylinder(d=5, h=thickness,center=true,$fn=32);
        
        mirror([0,1,0])
        translate([5,phone_width/2,0])
        cylinder(d=5, h=thickness,center=true,$fn=32);
        
        mirror([1,0,0])
        mirror([0,1,0])
        translate([5,phone_width/2,0])
        cylinder(d=5, h=thickness,center=true,$fn=32);
    }
}