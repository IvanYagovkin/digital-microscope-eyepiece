

echo("Работа Яговкина Ивана и Дмитриева Данила");

use <frame.scad>
use <ocular.scad>
use <smartphone.scad>

$fn = 128;
r_round_corner = 15;

phone_height = 147;
phone_width = 71;

// 1. Смартфон
smartphone();

// 2. Окуляр
translate([phone_height/2 - 23/2 - 19, phone_width/2 - 23/2 - 2, 35/2 + 15])
rotate([180, 0, 0])
ocular();

// 3. Пластина-основа (frame1)
frame1();

// 4. Угловые распорки (corner)
translate([0, 25, 3])
color("red")
corner(thickness = 20);

// 5. Вырез под окуляр в пластине
difference(){
    translate([phone_height/2 - 14, 22.5, 11.5])
    cube([phone_height/2, phone_width, 3], center=true);
    translate([phone_height/2 - 23/2 - 19, phone_width/2 - 23/2 - 2, 35/2])
    cylinder(d = 23 - 0.5 - 3, h = 40, center = true);
}