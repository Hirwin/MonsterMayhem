/// @description Insert description here
// You can write your code in this editor
if (shake > 0) {
    shake -= 1;
}
if (grabbed) {
    x = mouse_x;
    y = mouse_y;
}

if (global.curPlayer = id) {
    image_alpha = .5;
} else {
    image_alpha = 1;
}
if(global.curState == state.playerTurn){
	switch (playerState) {
		case "start turn":
		playerMove = true;
		playerAttack = true;
		endTurn = false;
		if(status == "Knocked Down"){
			playerState = "ending turn";
		} else {
			playerState = "idle";
			image_index = charID -1;
		}
		break;
	    case "begin player path":
	        path_start(movementPath, pathSpeed, 0, true);
	        playerState = "moving";
	        global.curPlayer = noone;
	        break;
	    case "hit choice":
			scrHitLocation();
			hitChance = -1;
		break;
		case "begin attack":
	        //this would set up before attack animation
	        attackTimer -= 1;
	        if (attackTimer <= 0) {
	            playerState = "attacking";
	        }
	        break;
	    case "attacking":
	        //a for loop here where speed is the max for loop count
	        playerAttack = false;
	        if (attackTarget != noone) {
	            var attackCheck = scrHitCheck(currentWeapon, hitChance);
	            var woundCheck = 0;
	            if (attackCheck > 0) {
	                woundCheck = scrToWound(currentWeapon, attackTarget, attackCheck); // TO DO  - count crits
	            }
	        }
	        scrClearNodes();
	        switch (global.weapons[# weaponStats.weaponType, currentWeapon]) {
	            case "Melee":
	                woundCount = woundCheck;
					alarmCount = 0;
					alarm[0] = room_speed/2;
					playerState = "mid attack";
	                break;
	            case "Ranged":
	                break;
	        }
	        break;
			case "mid attack":
			break;
	    case "end attack":
	            if (!playerMove) {
	                playerState = "ending turn"
					global.curPlayer = noone;
	            } else {
	                playerState = "idle";
	            }
	        break;
	    case "ending turn":
			if(status == "Knocked Down"){
				status = "Normal";
				playerMove = false;
				playerAttack = false;
			}
	        endTurn = true;
	        scrEndTurnCheck();
	        break;
	}

	if(healthPoints <= 0){
		oGameController.remainingSurvivors --;
		global.survivorList[charID] = -1;
		currentTile.containing = noone;
		currentTile.passable = true;
		scrLossCheck();
		instance_destroy();
	}
}