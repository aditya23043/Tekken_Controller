SIDE = 51.82;
PAD = 2.53;
SWITCH = 13.9;
PADDING = 10;
SCREW_R = 1.6;
$fn=100;

// total padding = 2.53+5

linear_extrude(1.5)
difference(){

	square([SIDE+PADDING, SIDE+PADDING]);

	translate([PADDING/2,PADDING/2,0]){

		translate([PAD,SIDE-PAD-SWITCH,0]){
			square([SWITCH, SWITCH]);
		}
		translate([PAD+SWITCH+PAD,SIDE-PAD-SWITCH,0]){
			square([SWITCH, SWITCH]);
		}
		translate([PAD+SWITCH+PAD+SWITCH+PAD,SIDE-PAD-SWITCH,0]){
			square([SWITCH, SWITCH]);
		}

		translate([PAD,SIDE-PAD-SWITCH-PAD-SWITCH,0]){
			square([SWITCH, SWITCH]);
		}
		translate([PAD+SWITCH+PAD,SIDE-PAD-SWITCH-PAD-SWITCH,0]){
			square([SWITCH, SWITCH]);
		}
		translate([PAD+SWITCH+PAD+SWITCH+PAD,SIDE-PAD-SWITCH-PAD-SWITCH,0]){
			square([SWITCH, SWITCH]);
		}

		translate([PAD,SIDE-PAD-SWITCH-PAD-SWITCH-PAD-SWITCH,0]){
			square([SWITCH, SWITCH]);
		}
		translate([PAD+SWITCH+PAD,SIDE-PAD-SWITCH-PAD-SWITCH-PAD-SWITCH,0]){
			square([SWITCH, SWITCH]);
		}
		translate([PAD+SWITCH+PAD+SWITCH+PAD,SIDE-PAD-SWITCH-PAD-SWITCH-PAD-SWITCH,0]){
			square([SWITCH, SWITCH]);
		}

	}

	translate([4,4,0]){
		circle(r=SCREW_R);
	}
	translate([SIDE+PADDING-4,4,0]){
		circle(r=SCREW_R);
	}
	translate([4,SIDE+PADDING-4,0]){
		circle(r=SCREW_R);
	}
	translate([SIDE+PADDING-4,SIDE+PADDING-4,0]){
		circle(r=SCREW_R);
	}
	translate([4, (SIDE+PADDING)/2, 0]){
		circle(r=SCREW_R);
	}
	translate([SIDE+PADDING-4, (SIDE+PADDING)/2, 0]){
		circle(r=SCREW_R);
	}
	translate([(SIDE+PADDING)/2, 4, 0]){
		circle(r=SCREW_R);
	}
	translate([(SIDE+PADDING)/2, SIDE+PADDING-4, 0]){
		circle(r=SCREW_R);
	}
}
