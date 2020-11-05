function create_deck() {
    var _new_deck = ds_stack_create();
    
    for (var _i = 0; _i <= 3; _i++) {
        for (var _r = 0; _r <= 12; _r++) {
            var _new_card = {
				card_type : _i,
				card_numb : _r
			};
			ds_stack_push(_new_deck, _new_card);    
        }    
    }   
    
    return _new_deck;
}

function print_deck(_deck) {
	var _temp_deck = ds_stack_create();
	ds_stack_copy(_temp_deck, _deck);
	var _i = 0; repeat(ds_stack_size(_temp_deck)) {
		var _card = ds_stack_pop(_temp_deck);
		
		show_debug_message(string(_i));
		show_debug_message("Type" + string(_card.card_type));
		show_debug_message("Number" + string(_card.card_numb));
		
		_i++;
	}
	ds_stack_destroy(_temp_deck)
	show_debug_message("-----END-----");
}

function correct_sprite(_type, _numb) {
	var index = -1;
	switch (_type) {
		case 0:
			index = _numb;
			break;
		case 1:
			index = 13 + _numb;
			break;
		case 2:
			index = 26 + _numb;
			break;
		case 3:
			index = 39 + _numb;
			break;
	}
	return index;
}

function create_card() {
	var _temp_card_info = ds_stack_pop(deck);
	var _temp_card = instance_create_layer(room_width / 2, room_height / 2, "Cards", objCard);
	_temp_card.card_info = _temp_card_info;
	_temp_card.image_index = correct_sprite(_temp_card.card_info.card_type, _temp_card.card_info.card_numb);
}