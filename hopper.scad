EIGHT_OUNCES = 34.5;
TEN_OUNCES = 50;
TWELVE_OUNCES = 65;

lip_height = 27;
lip_radius = 56.65;
lip_wall_thickness = 1.5;
ext_radius = 59;
ext_wall_thickness = 2.5;
ext_height = 50;
transition_height = 10;
 
$fn = 360;
translate([0,0,ext_height+lip_height])
    rotate([0, 180, 0])
    difference() {
    union() {
        translate([0, 0, lip_height/2 ])
            cylinder(h=lip_height, r=lip_radius, center=true);
        translate([0, 0, ext_height/2 + lip_height])
            cylinder(h=ext_height, r=ext_radius, center=true);
    }
    #union() {
        translate([0, 0, lip_height/2])
            cylinder(h=lip_height, r=lip_radius-lip_wall_thickness, center=true);
        translate([0, 0, transition_height/2 + lip_height])
            cylinder(h=transition_height, r1=lip_radius-lip_wall_thickness, r2=ext_radius-ext_wall_thickness, center=true);
        translate([0, 0, (ext_height - transition_height)/2 + transition_height + lip_height])
            cylinder(h=ext_height - transition_height, r=ext_radius-ext_wall_thickness, center=true);
    }
}
