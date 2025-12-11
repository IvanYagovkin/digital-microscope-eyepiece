use <smartphone.scad>
use <ocular.scad>
use <frame.scad>

echo ("Работа Яговкина ИВана");

$fn = 128;
r_round_corner = 15;

//color("green")
//translate([0,0,15])
//cube([162,77.2,9],center=true);

smartphone();
translate([0,0,9])
color("red")
frame_crossbar();
translate([0,-30,-6])
half_jaws();
translate([0,30,-6])
rotate([0,0,180])
half_jaws();
translate([74,0,-6])
rotate([0,0,90])
half_jaws();
translate([-74,0,-6])
rotate([0,0,90])
half_jaws();
//translate([162/2-23/2-19,77/2-23/2-2,35/2+15])
//rotate([180,0,0])
//ocular();
//
//frame1();
//translate([0,25,0])
//corner();