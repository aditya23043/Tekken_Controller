
SIDE = 51.82;
PAD = 2.53;
SWITCH = 13.9;
PADDING = 10;
SCREW_R = 1.6;
$fn=100;

// total padding = 2.53+5

/* linear_extrude(1.5) */

difference(){

	hull(){
		square([SIDE+PADDING, SIDE+PADDING]);
		translate([-2-15-26,-2-10,0]){
			square([26+4, 34+4]);
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

	translate([-15-26,-10,0]){
		translate([SCREW_R+0.6,SCREW_R+0.8,0]){
			circle(r=SCREW_R);
		}
		translate([26-SCREW_R-0.6,SCREW_R+0.8,0]){
			circle(r=SCREW_R);
		}
		translate([SCREW_R+0.6,34-SCREW_R-2.5,0]){
			circle(r=SCREW_R);
		}
		translate([26-SCREW_R-0.6,34-SCREW_R-2.5,0]){
			circle(r=SCREW_R);
		}
	}
}
