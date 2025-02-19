$fn=100;

SCREW_R = 1.6;
PADDING = 8;
MX_SIDE = 13.8;
MX_GAP = 5;
SIDE = (2*PADDING)+(3*MX_SIDE)+(2*MX_GAP);
WIDTH = SIDE + MX_GAP + MX_SIDE;
MULTIPLIER = 0.5;
JOYSTICK_Y = ((51.82+10) / 2)-4;

module d1mini() {
    color("#ffffff")
    rotate([0,0,90])
    translate([50,22,5])
    #import("WEMOS-MINI-D1_ASM (Meshed).stl");
}

module pico(){
    color("#ffffff")
    translate([-128,100,-3])
    import("rpi.stl");
}

module pico_holes(){
    translate([-29.9-8,29.2,0])
            cylinder(r=1,h=2);
    translate([-18.5-8,29.2,0])
            cylinder(r=1,h=2);
    translate([-29.9-8,76.2,0])
            cylinder(r=1,h=2);
    translate([-18.5-8,76.2,0])
            cylinder(r=1,h=2);
}

// projection()
difference(){
    
    union(){
        hull(){
            minkowski(){
                cube([WIDTH, SIDE, 1.4]);
                cylinder(r=1, h=0.1);
            }
            minkowski(){
                linear_extrude(1.4)
                translate([-2-15-26,-2-10,0]){
                    square([26+4, 34+4]);
                }
                cylinder(r=1, h=0.1);
            }
            translate([-44,66.3,0])
                cube([2,2,1.5]);
                /* cylinder(r=1,h=1.5); */
        }
        minkowski(){
            translate([-43+1,68,0])
                cube([10+10+1-1, 10, 1.4]);
            cylinder(r=2,h=0.1);
        }
        
        intersection(){

            difference(){
                translate([-18,70.3,0])
                    translate([-2,-2,0])
                    cube([4,4,1.5]);
                translate([-18,70.3,0])
                    cylinder(h=1.5,r=2);
            };
            translate([-2,-2,0])
                translate([-18,70.3,0])
                cylinder(h=1.5,r=2);
        };

    };

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

    translate([-15-26,-10,0]){
        translate([SCREW_R+0.6,SCREW_R+0.8,0]){
            cylinder(h=3, r=SCREW_R);
        }
        translate([26-SCREW_R-0.6-1,SCREW_R+0.8,0]){
            cylinder(h=3, r=SCREW_R);
        }
        translate([SCREW_R+0.6,SCREW_R+0.8+JOYSTICK_Y,0]){
            cylinder(h=3, r=SCREW_R);
        }
        translate([26-SCREW_R-0.6-1,SCREW_R+0.8+JOYSTICK_Y,0]){
            cylinder(h=3, r=SCREW_R);
        }
    }
    /* d1mini(); */
    /* #pico(); */
    pico_holes();
};
