// Calculate deck sprite index
var _temp_size = ds_stack_size(deck);
var _temp_index = min(4, _temp_size);

switch(_temp_index) {
	case 0:
		draw_self();
		break;
	case 1:
		draw_sprite(card_sprites[global.card_color], global.card_back, x, y);
		break;
	case 2:
		draw_sprite(card_sprites[global.card_color], global.card_back, x, y);
		draw_sprite(card_sprites[global.card_color], global.card_back, x + 3, y + 3);
		break;
	case 3:
		draw_sprite(card_sprites[global.card_color], global.card_back, x, y);
		draw_sprite(card_sprites[global.card_color], global.card_back, x + 3, y + 3);
		draw_sprite(card_sprites[global.card_color], global.card_back, x + 6, y + 6);
		break;
	case 4:
		draw_sprite(card_sprites[global.card_color], global.card_back, x, y);
		draw_sprite(card_sprites[global.card_color], global.card_back, x + 3, y + 3);
		draw_sprite(card_sprites[global.card_color], global.card_back, x + 6, y + 6);
		draw_sprite(card_sprites[global.card_color], global.card_back, x + 9, y + 9);
		break;

}

