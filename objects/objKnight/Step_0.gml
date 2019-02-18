/// @description 
switch (state){
	case "chase":
		#region state: chase
		
		if (instance_exists(objSkeleton)){
			SetStateSprite(sprKnight_walk, 0.4, 0);
			image_xscale = sign(objSkeleton.x - x);
			if image_xscale == 0 {
				image_xscale = 1;
			}
			
			var sprDirection = image_xscale;
			var distToPlayer = point_distance(x, y, objSkeleton.x, objSkeleton.y);
		
			if (distToPlayer <= attackRange) {
				state = "attack";
			} else {
				MoveAndCollide(sprDirection * chaseSpeed, 0);
			}
		} else {
			SetStateAfterAnimation("idle");
		}

		break;
		#endregion
		
	case "attack":
		#region state: attack
		if(instance_exists(objSkeleton)){
			SetStateSprite(sprKnight_attack, 0.5, 0);
			SetStateAfterAnimation("chase");
		
			if (CheckFrameReached(4) && objSkeleton.state != "roll") {
				CreateHitbox(x, y, self, sprKnight_attack_damage, image_speed, 6, 3, 7, image_xscale);
			}
		} else {
			SetStateAfterAnimation("idle");
		}	
		
		break;
		#endregion
		
	case "knockBack":
		#region state: knockBack
		SetKnockBackState(sprKnight_hitstun, "chase");
		break;
		#endregion
		
	case "idle":
		#region state: idle
		SetStateSprite(sprKnight_idle, 0.5, 0);
		break;
		#endregion
		
	default:
		show_debug_message("state " + state + " does not exist");
		SetStateAfterAnimation("chase");
		break;
		
}