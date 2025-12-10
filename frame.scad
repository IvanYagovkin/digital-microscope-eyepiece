use <smartphone.scad>
use <ocular.scad>

phone_height = 147;
phone_width = 71;




//translate([phone_height/2-23/2-19,phone_width/2-23/2-2,35/2+15])
//rotate([180,0,0])
//ocular();
//frame1();
//translate([0,25,3])
//color("red")
//corner(thickness=20);

//jaws
module half_jaw(){
    difference(){
        block_jaw();
        translate([0, 25,0])
        cube([40+25*2, 25*2, 9*3+1], center=true);
    }
}
//polygon([[10,20][15,25],[25,45]);
points = [[0,0],[0, 9*3+1],[11, 9*3+1],[11, 9],[0,0]];

difference(){
    half_jaw();
    translate([0,1,-9*3/2])
    rotate([90,0,180])
    rotate([0,90,0])
    linear_extrude(height=40+25*2, center = true)
    polygon(points);
}

module block_jaw(){
    linear_extrude(height=9*3, center = true){
        hull(){
            translate([15,0,0])
            circle(25);
            translate([-15,0,0])
            circle(25);
        }
    }
}
//frame_crossbar();

module frame_crossbar(){
    crossbar_vertical(length=162+50);
    crossbar_horizontal(length=77+50);
}



module crossbar_horizontal(length){
    rotate([0,0,90])
    crossbar_vertical(length);
}
module crossbar_vertical(length){
    difference(){
        hull(){
            translate([-(length)/2,0,0])
            cylinder(d=7,h=3, center = true, $fn=32);
            
            translate([(length)/2,0,0])
            cylinder(d=7,h=3, center = true, $fn=32);
        }
        
        hull(){
            translate([-(length)/2+2,0,0])
            cylinder(d=3.5,h=10, center = true, $fn=32);
              
            translate([(length)/2-2,0,0])
            cylinder(d=3.5,h=10, center = true, $fn=32);
        }
    }
}

//difference(){
//    color("red")
//    corner(thickness=20);
//    
//    holes_corner();
//}



module nut_m3(){
    cylinder(d=6+0.5,h=4,center=true, $fn=6);
    cylinder(d=6+0.5,h=1,center=true, $fn=64);
}

module holes_corner(){
    translate([40,40,0.])
    rotate([90,0,0])
    cylinder(d=3.5,h=25, center = true, $fn=64);
    
    translate([80,40,0.])
    rotate([90,0,0])
    cylinder(d=3.5,h=25, center = true, $fn=64);
    
    translate([100,20,0.])
    rotate([0,90,0])
    cylinder(d=3.5,h=25, center = true, $fn=64);
    
    translate([100,-20,0.])
    rotate([0,90,0])
    cylinder(d=3.5,h=25, center = true, $fn=64);
    
    translate([95,-20,0])
    rotate([0,90,0])
    nut_m3();
    
    translate([95,20,0])
    rotate([0,90,0])
    nut_m3();
    
    translate([40,32.5,0])
    rotate([0,90,90])
    nut_m3();
    
    translate([80,32.5,0])
    rotate([0,90,90])
    nut_m3();
}
//difference(){
//    translate([phone_height/2-14, 22.5, 11.5])
//    cube([phone_height/2,phone_width, 3],center=true);
//    translate([phone_height/2-23/2-19,phone_width/2-23/2-2,35/2])
//    cylinder(d=23-0.5-3,h=40,center=true);
//}
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