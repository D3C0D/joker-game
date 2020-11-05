//Select and move flag
selected	= point_in_rectangle(mouse_x, mouse_y, x - (sprite_width / 2), y - (sprite_height / 2), x + sprite_width, y + sprite_height);
if (selected and !move) { move = mouse_check_button_pressed(mb_left); }

//Move card
if (move) {
	x = mouse_x;
	y = mouse_y;
	if (mouse_check_button_released(mb_left)) { move = false }
}