///@desc Initialize & Globals
randomize()	;														//creates a diferent seed and randomization every time game starts

global.iCamera = instance_create_layer(0, 0, layer, o_camera);		//Create camera object
global.iControl = instance_create_layer(0, 0, layer, o_controls);	//Create control's object

global.targetRoom = -1;												//Target room name to go to
global.targetX = -1;												//target rooms x destination coordinate
global.targetY = -1;												//target rooms y destination coordinate
global.targetDir = 0;												//direction of player to face when enter the room

global.lifes = 3;													//player lifes
global.score = 0;													//player score
global.seconds = 0;
global.minutes = 0;
global.hours = 0;

///@desc GUI and menu setup
inputBuffer = 0;
inputBufferMax = 10;
menuOption = 0;

window_set_cursor(cr_none);											//Hide cursor on game screen
surface_resize(application_surface, 1366, 768);						//resize of the application surface to our standart Resolutions width and height
window_center();													//center the window after resize
window_set_fullscreen(true);										//set window fullscreen on start
room_goto(r_main_menu);												//Transition to start