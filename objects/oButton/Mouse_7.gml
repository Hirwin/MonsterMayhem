/// @description Insert description here
// You can write your code in this editor
image_index = 0;

switch(type){
	case "Restart":
		game_restart();
	break;
	case "Attacked":
		creator.monsterState = "attack";
		global.curState = state.monsterTurn;
	break;
}