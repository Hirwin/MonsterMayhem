/// @description Insert description here
// You can write your code in this editor
draw_self();
//draw_text(x + (sprite_width/2 - string_width(text[0])/2), y + (sprite_height/4), text[0]);
//if (array_length_1d(text) > 1){
	for(var i = 0; i < array_length_1d(text); i++){
		draw_set_font(fPopUP);
		draw_text(x + (sprite_width/2 - string_width(text[i])/2), y + ((sprite_height/6) + (i*string_height(text[i]) + 5)), text[i]);
		draw_set_font(fDefault);
	}
//}

