$fn=100;

SCREW_R = 1.6;
PADDING = 8;
MX_SIDE = 13.8;
MX_GAP = 5;
SIDE = (2*PADDING)+(3*MX_SIDE)+(2*MX_GAP);
WIDTH = SIDE + MX_GAP + MX_SIDE;
MULTIPLIER = 0.5;
JOYSTICK_Y = ((51.82+10) / 2)-4;

difference(){
    
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
    }

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

};
