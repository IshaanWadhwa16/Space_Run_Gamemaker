if(place_meeting(x, y, o_player)) {
	
	if(instance_exists(o_powerup_score)) {
		show_debug_message("1111");
		global.score += 200;
	}//end if
	else {
		show_debug_message("2222");
		global.score += 100;
		audio_play_sound(collect_d, 1, false);
		show_debug_message("3333");
	}//end else
	instance_destroy();
}//end if