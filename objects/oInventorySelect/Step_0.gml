/// @description Insert description here
// You can write your code in this editor
if(finished){
	global.characterInventory[characterID] = currentWeapon;
	for(var i = 0; i < buttonCount; i++){
		instance_destroy(buttons[i]);
	}
	instance_destroy();
}