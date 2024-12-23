if(o_meta.menuOption == 1) {
	//set image_alpha
	if(blink_time++ > blink_length) {
		image_alpha = blink_alpha 
	}//end if
	else { 
		image_alpha = 1;
	}//end else

	//reset time
	if(blink_time > blink_length * 2) {
		blink_time = 0;
	}//end if
	
	if(global.jump) {
		//end game
		game_end();
	}//end if
}//end if
else {
	image_alpha = 1;
	blink_time = 0;
	blink_length = 15;
	blink_alpha = 0.25;
}//end else