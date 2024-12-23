///@desc draw gui
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(Font1);
draw_set_alpha(1);

if(room_get_name(room) != "r_main_menu") {
	draw_text(32, 32, "Life's: " + string(global.lifes));
	draw_text(32, 50, "Score: " + string(global.score));
	draw_text(32, 68, "Time: " + string(global.hours) + ":" + string(global.minutes) + ":" + string(global.seconds));
}//end if
