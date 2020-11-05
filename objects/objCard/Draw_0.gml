//Update card color
sprite_index = card_sprites[global.card_color];

//Draw card
switch (state) {
	case 0:
		draw_self();
		break;
	case 1:
		draw_sprite(sprite_index, global.card_back, x, y);
		break;
}

//Draw selected outline
if (move) {
	draw_sprite(sprCardOutline, 0, x, y);
}