// Cards Coordinates
game_deck_x = sprite_get_width(sprDeck) - 15;
game_deck_y =  room_height / 2; 

game_deck = instance_create_layer(game_deck_x, game_deck_y, "Cards", objDeck);

player_cards = ds_list_create();
