var _ui_layer=layer_get_id("textPopup");
with(_ui_parent)
{
	ui_element_toggle_active(layer == _ui_layer);
}
with(oGameController) popup=false;
