//Pop a new card
var selected = point_in_rectangle(mouse_x, mouse_y, x - (sprite_width / 2), y - (sprite_height / 2), x + sprite_width, y + sprite_height);
if (selected and mouse_check_button_pressed(mb_left)) {	create_card(); }

//Return a card
var _card_return = instance_place(x, y, objCard);
if (_card_return != noone) {
	if (!_card_return.move) {
		ds_stack_push(deck, _card_return.card_info);
		instance_destroy(_card_return);
	}
}
