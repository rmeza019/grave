/// @description 
if (instance_exists(objSkeleton)) {
	var dir = point_direction(x, y, objSkeleton.x, objSkeleton.y);
	var accel = 0.25;
	motion_add(dir, accel);
	
	if(speed > maxSpeed){
		speed = maxSpeed;
	}
}