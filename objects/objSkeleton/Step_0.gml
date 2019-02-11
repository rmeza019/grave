switch (state){
	case "move":
		#region move state
		if (!input.right && !input.left){
			SetStateSprite(sprSkeleton_idle, 0.4, 0);
		} else {
			SetStateSprite(sprSkeleton_run, 0.6, 0);
		}

		//keyboard movement
		if (input.right) {
			MoveAndCollide(runSpeed, 0);
			SetStateSprite(sprSkeleton_run, 0.6, 0);
			image_xscale = 1;
		}

		if (input.left) {
			MoveAndCollide(-runSpeed, 0);
			SetStateSprite(sprSkeleton_run, 0.6, 0);
			image_xscale = -1;
		}
	
		//state change: roll
		if (input.roll) {
			state = "roll";
		}
		
		//state change: attack1
		if (input.attack) {
			state = "attack1";
		}
		
		break;
		#endregion
	
	case "roll":
		#region roll state
		SetStateSprite(sprSkeleton_roll, 0.7, 0);
		
		if (image_xscale == 1){
			MoveAndCollide(rollSpeed, 0);
		} else if (image_xscale == -1) {
			MoveAndCollide(-rollSpeed, 0);
		}
		
		SetStateAfterAnimation("move");
		
		break;
		#endregion
	
	case "attack1":
		#region attack1 state
		SetStateSprite(sprSkeleton_attack_one, 0.5, 0);
		
		if (CheckFrameReached(0) && hitBox == -1) {
			hitBox = CreateHitbox(x, y, self, sprSkeleton_attack_one_damage, image_speed, 2.5, 4, 5, image_xscale);
		}
		
		//state change: attack2
		if (input.attack && CheckFrameRange(2, 4)) {
			state = "attack2";
		}
		
		SetStateAfterAnimation("move");
		
		break;
		#endregion
		
	case "attack2":
		#region attack2 state
		SetStateSprite(sprSkeleton_attack_two, 0.5, 0);
		
		
		if (CheckFrameReached(1) && hitBox == -1) {
			hitBox = CreateHitbox(x, y, self, sprSkeleton_attack_two_damage, image_speed, 2.5, 3, 5, image_xscale);
		}
		
		//state change: attack3
		if (input.attack && CheckFrameRange(2, 4)) {
			state = "attack3";
		}
		
		SetStateAfterAnimation("move");
		
		break;
		#endregion
	
	case "attack3":
		#region attack3 state
		SetStateSprite(sprSkeleton_attack_three, 0.5, 0);
		
		if (CheckFrameReached(2) && hitBox == -1) {
			hitBox = CreateHitbox(x, y, self, sprSkeleton_attack_three_damage, image_speed, 4, 3, 8, image_xscale);
		}
		
		SetStateAfterAnimation("move");
		
		break;
		#endregion
		
	case "knockBack":
		#region state: knockBack
		SetKnockBackState(sprSkeleton_hitstun, "move");
		break;
		#endregion
		
	default:
		show_debug_message("state " + state + " does not exist");
		state = "move";
		break;

}
