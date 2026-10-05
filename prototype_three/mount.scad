$fn=100;

SCREW_R = 1.6;
PADDING = 8;
MX_SIDE = 13.8;
MX_GAP = 5;
SIDE = (2*PADDING)+(3*MX_SIDE)+(2*MX_GAP);
WIDTH = SIDE + MX_GAP + MX_SIDE;
MULTIPLIER = 0.5;

difference(){
    minkowski(){
        cube([WIDTH, SIDE, 1.4]);
        cylinder(r=1, h=0.1);
    }

    translate([PADDING, PADDING, 0])
        cube([MX_SIDE, MX_SIDE, 1.5]);
    translate([PADDING, PADDING+MX_GAP+MX_SIDE, 0])
        cube([MX_SIDE, MX_SIDE, 1.5]);
    translate([PADDING, PADDING+MX_GAP+MX_SIDE+MX_GAP+MX_SIDE, 0])
        cube([MX_SIDE, MX_SIDE, 1.5]);

    translate([PADDING+MX_SIDE+MX_GAP, PADDING, 0])
        cube([MX_SIDE, MX_SIDE, 1.5]);
    translate([PADDING+MX_SIDE+MX_GAP, PADDING+MX_GAP+MX_SIDE, 0])
        cube([MX_SIDE, MX_SIDE, 1.5]);
    translate([PADDING+MX_SIDE+MX_GAP, PADDING+MX_GAP+MX_SIDE+MX_GAP+MX_SIDE, 0])
        cube([MX_SIDE, MX_SIDE, 1.5]);

    translate([PADDING+MX_SIDE+MX_GAP+MX_SIDE+MX_GAP, PADDING, 0])
        cube([MX_SIDE, MX_SIDE, 1.5]);
    translate([PADDING+MX_SIDE+MX_GAP+MX_SIDE+MX_GAP, PADDING+MX_GAP+MX_SIDE, 0])
        cube([MX_SIDE, MX_SIDE, 1.5]);
    translate([PADDING+MX_SIDE+MX_GAP+MX_SIDE+MX_GAP, PADDING+MX_GAP+MX_SIDE+MX_GAP+MX_SIDE, 0])
        cube([MX_SIDE, MX_SIDE, 1.5]);

    translate([PADDING+MX_SIDE+MX_GAP+MX_SIDE+MX_GAP+MX_SIDE+MX_GAP, PADDING, 0])
        cube([MX_SIDE, MX_SIDE, 1.5]);
    translate([PADDING+MX_SIDE+MX_GAP+MX_SIDE+MX_GAP+MX_SIDE+MX_GAP, PADDING+MX_GAP+MX_SIDE, 0])
        cube([MX_SIDE, MX_SIDE, 1.5]);
    translate([PADDING+MX_SIDE+MX_GAP+MX_SIDE+MX_GAP+MX_SIDE+MX_GAP, PADDING+MX_GAP+MX_SIDE+MX_GAP+MX_SIDE, 0])
        cube([MX_SIDE, MX_SIDE, 1.5]);
    
    // screw holes
    translate([PADDING*MULTIPLIER, PADDING*MULTIPLIER, 0])
        cylinder(h = 5, r = SCREW_R);
    translate([WIDTH-(PADDING*MULTIPLIER), PADDING*MULTIPLIER, 0])
        cylinder(h = 5, r = SCREW_R);
    translate([WIDTH-(PADDING*MULTIPLIER), SIDE-(PADDING*MULTIPLIER), 0])
        cylinder(h = 5, r = SCREW_R);
    translate([(PADDING*MULTIPLIER), SIDE-(PADDING*MULTIPLIER), 0])
        cylinder(h = 5, r = SCREW_R);

    translate([PADDING*MULTIPLIER, (SIDE/2), 0])
        cylinder(h = 5, r = SCREW_R);
    translate([WIDTH-(PADDING*MULTIPLIER), (SIDE/2), 0])
        cylinder(h = 5, r = SCREW_R);
    translate([(WIDTH/2), PADDING*MULTIPLIER, 0])
        cylinder(h = 5, r = SCREW_R);
    translate([WIDTH/2, SIDE-(PADDING*MULTIPLIER), 0])
        cylinder(h = 5, r = SCREW_R);

}
