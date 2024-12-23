//Update Destination
if(instance_exists(follow)) {
	xTo = follow.x;
	yTo = follow.y;
}//end if

//camera sets its position to the object is folowwing
x += (xTo-x)/15;
y += (yTo-y)/15;
	
//Restrict camera to room bounds
x = clamp(x, viewWHalf, room_width-viewWHalf);
y = clamp(y, viewHHalf, room_height-viewHHalf);

//set camera position
camera_set_view_pos(global.cam, x-viewWHalf, y-viewHHalf);
