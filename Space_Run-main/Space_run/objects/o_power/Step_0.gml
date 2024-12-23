if(place_meeting(x, y, o_player)) {
	var _powerup;
	show_debug_message("888");
	audio_play_sound(collect_powerups, 1, false);
	switch(powerup) {
		case 0:
			//shield
			_powerup = instance_create_layer(o_player.x, o_player.y, layer, o_powerup_shield);
		break;
		case 1:
			//health
			_powerup = instance_create_layer(o_player.x, o_player.y, layer, o_powerup_extralife);
		break;
		case 2:
			//score
			_powerup = instance_create_layer(o_player.x, o_player.y, layer, o_powerup_score);
		break;
		case 3:
			//speed
			_powerup = instance_create_layer(o_player.x, o_player.y, layer, o_powerup_speed);
		break;
		case 4:
			//time
			_powerup = instance_create_layer(o_player.x, o_player.y, layer, o_powerup_time);
		break;
		show_debug_message("999");	
		
	}//end switch
		if(instance_exists(o_powerup_score)) {
			global.score += 50;
		}//end if
		else {
			global.score += 25;
		}//end else
	instance_destroy();
}//end if