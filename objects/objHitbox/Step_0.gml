/// @description 
lifeSpan --;

if (lifeSpan <= 0) {
	creator.hitBox = -1;
	instance_destroy();
}
