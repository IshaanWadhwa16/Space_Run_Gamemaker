//apply gravity
vSpd += grav;

//dont walk of ledges
if(grounded && afraidOfHeights && !place_meeting(x + hSpd, y+1, o_parent_col)) {
	//turn around if about to fall
	hSpd = -hSpd;
}//end if

//horizontal col
	if(place_meeting(x + hSpd, y, o_parent_col)) {
		while(!place_meeting(x+sign(hSpd), y, o_parent_col)) {
			x += sign(hSpd);
		}//end while
		hSpd = -hSpd;
	}//end if

	//apply movement on x
	x += hSpd;

	//vertical col
	if(place_meeting(x, y + vSpd, o_parent_col)) {
		while(!place_meeting(x, y+sign(vSpd), o_parent_col)) {
			y += sign(vSpd);
		}//end while
		vSpd = 0;
	}//end if

	//apply movement on y
	y += vSpd;

grounded = place_meeting(x, y+1, o_parent_col);

//facing
if(hSpd > 0) {
	image_xscale = -0.426009;
}//end if
else {
	image_xscale = 0.426009;
}