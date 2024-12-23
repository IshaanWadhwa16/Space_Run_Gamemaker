///@desc collision()
function collision() {
	
	//horizontal col
	if(place_meeting(x + hSpd, y, o_parent_col)) {
		while(!place_meeting(x+sign(hSpd), y, o_parent_col)) {
			x += sign(hSpd);
		}//end while
		hSpd = 0;
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
	
}//end script