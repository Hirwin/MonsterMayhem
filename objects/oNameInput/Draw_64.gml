/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
if (visualState == VisualState.inactive) exit;

draw_self();
draw_set_color(c_black);
draw_text(x + 3,y + 4,text);
draw_set_color(c_white);