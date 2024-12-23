if(invulnerable <= 0) {
	if(global.lifes > 1) {
		global.lifes--;
		invulnerable = invulnerableMax;
		x = xstart;
		y = ystart;
	}//end if
	else {
		global.lifes--;
		room_goto(r_end_menu);
	}//end else
}//end if