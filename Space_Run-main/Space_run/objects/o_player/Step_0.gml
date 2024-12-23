//get input
var _move = global.right - global.left;

//calculate movement
if(instance_exists(o_powerup_speed)) {
	hSpd = _move * (walkSpd + 5);
	show_debug_message("5555");
}//end if
else {
	hSpd = _move * walkSpd;
	
}//end else


//apply gravity to game
vSpd += grav;

if(place_meeting(x, y+1, o_parent_col)) && (global.jump){
	vSpd = -10;
	// Play jump sound
    audio_play_sound(jump_sound, 1, false);
}//end if

collision();
unstuck_player();

//player facing
if(hSpd != 0) {
	image_xscale = sign(hSpd);
}//end if

if(place_meeting(x, y, o_enemy)) {
	show_debug_message("hhhhh");
	var _enemy = instance_place(x, y, o_enemy);
	if(y < _enemy.y - 130) {
		with(_enemy) {
			show_debug_message("9999");
			//kill enemy when stomped
			instance_destroy();
		}//end with
		vSpd = -5;
		if(instance_exists(o_powerup_score)) {
			global.score += 100;
		}//end if
		else {
			global.score += 50;
		}//end else
	}//end if
	else {
	//hurt player
	if(invulnerable == 0 && !instance_exists(o_powerup_shield)) {
		if(global.lifes > 1) {
			global.lifes--;
			invulnerable = invulnerableMax;
			audio_play_sound(Dying, 1, false)
		}//end if
		else {
			global.lifes--;
		
			room_goto(r_end_menu);
			audio_play_sound(gameover, 1, false)
			
		}//end else
	}//end if
}//end else
}//end if

depth = -9999;