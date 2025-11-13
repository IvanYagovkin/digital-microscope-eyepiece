// ocular.scad — окуляр
ocular()
module top(){
    difference(){
        cylinder(d = 30, h = 5, center = true);
        cylinder(d = 23 - 0.5 - 3, h = 15, center = true);
    }
}

module ocular(){
    translate([0.4, 0, 35/2 + 5/2])
    top();
    difference(){
        cylinder(d = 23 - 0.5, h = 35, center = true);
        cylinder(d = 23 - 0.5 - 3, h = 40, center = true);
    }
}

// === Автономный запуск ===
// ocular();