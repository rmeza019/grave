/// @description 
switch (state){
	case "chase":
		#region state: chase
		
		if (instance_exists(objSkeleton)){
			move_towards_point(objSkeleton.x, objSkeleton.y - 24, speed);
		
			if(objSkeleton.x <= x){
				image_xscale = -1;
			} else {
				image_xscale = 1;
			}
		
			if(place_meeting(x, y, objSkeleton) && objSkeleton.state != "roll" && attacked == false){
				CreateHitbox(x, y, self, sprite_index, image_speed, knockBack, 1, damage, image_xscale);
				state = "flee";
			}
		
		} else {
			state = "flee";
		}
		
		break;
		#endregion
	
	case "flee":
		#region state: flee
		attacked = true;
			vspeed = -1;
		
		break;
		#endregion
		
	default:
		show_debug_message("state " + state + " does not exist");
		state = "chase";
		break;
		
}