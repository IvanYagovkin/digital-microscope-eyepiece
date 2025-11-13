// smartphone.scad — смартфон
smartphone();
$fn = 128;
r_round_corner = 15

module block(){
    phone_height = 147;
    phone_width = 71;
    
    hull(){
        translate([phone_height/2 - r_round_corner/2, phone_width/2 - r_round_corner/2, 0])
        cylinder(d = r_round_corner, h = 9, center = true);
        
        mirror([1,0,0])
        translate([phone_height/2 - r_round_corner/2, phone_width/2 - r_round_corner/2, 0])
        cylinder(d = r_round_corner, h = 9, center = true);
        
        mirror([0,1,0])
        translate([phone_height/2 - r_round_corner/2, phone_width/2 - r_round_corner/2, 0])
        cylinder(d = r_round_corner, h = 9, center = true);
        
        mirror([1,0,0]) mirror([0,1,0])
        translate([phone_height/2 - r_round_corner/2, phone_width/2 - r_round_corner/2, 0])
        cylinder(d = r_round_corner, h = 9, center = true);
    }
}

module cameras(){
    phone_height = 147;
    phone_width = 71;
    
    color("blue") translate([phone_height/2 - 13, phone_width/2 - 13, 0]) cylinder(d=18, h=15, center=true);
    color("blue") translate([phone_height/2 - 23, phone_width/2 - 30, 0]) cylinder(d=18, h=15, center=true);
    color("blue") translate([phone_height/2 - 32, phone_width/2 - 13, 0]) cylinder(d=18, h=15, center=true);
}

module smartphone(){
    block();
    cameras();
}

// === Автономный запуск ===
// smartphone();