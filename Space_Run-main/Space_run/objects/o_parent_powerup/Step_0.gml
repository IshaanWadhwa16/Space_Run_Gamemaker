x = o_player.x;
y = o_player.y-75;

timer = timer > 0 ? max(0, timer - 1) : 0;	//reset timer

if(timer <= 0) {
	instance_destroy();
}//end if