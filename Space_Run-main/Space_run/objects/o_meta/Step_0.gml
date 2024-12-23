if(room_get_name(room) == "r_main_menu") || (room_get_name(room) == "r_end_menu") {
	if(inputBuffer > 0) {
		inputBuffer = max(0, inputBuffer - 1); //reset inputbuffer back to 0
	}//end if

	var _input = global.down - global.up;

	if(_input != 0 && inputBuffer == 0) {
		//move through the menu
		menuOption += _input;
		//insert SFX here
		inputBuffer = inputBufferMax; //set input buffer
		if(menuOption > 1) {
			//reached bottom of menu options and loop back to top
			menuOption = 0;
		}//end if
		if(menuOption < 0) {
			//we hit up at first option of menu and loops to the last one
			menuOption = 1;
		}//end if	
	}//end if
}//end if

if(room_get_name(room) == "r_main_menu") {
	global.seconds = 0;
	global.minutes = 0;
	global.hours = 0;
}//end if

if(room_get_name(room) == "r_lvl_1" ||
   room_get_name(room) == "r_lvl_2" ||
   room_get_name(room) == "r_lvl_3" ||
   room_get_name(room) == "r_lvl_4" ||
   room_get_name(room) == "r_lvl_5") && (!instance_exists(o_powerup_time)) {
	
	if(global.seconds < 60) {
		global.seconds++;
	}//end if
	else {
		global.seconds = 0;
		global.minutes++;
		if(global.minutes == 60) {
			global.minutes = 0;
			global.hours++;
		}//end if
	}//end else
}//end if