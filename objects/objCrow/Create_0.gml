event_inherited();
hp = 1;
max_hp = 1;
state = "chase";
hspeed = random_range(1, 2);
image_speed = 0.5;

if(instance_exists(objSkeleton)){
	hspeed *= sign(objSkeleton.x - x);
}

image_xscale = sign(hspeed);

knockBack = 2;
damage = 5;
attacked = false;
expPoints = 2;