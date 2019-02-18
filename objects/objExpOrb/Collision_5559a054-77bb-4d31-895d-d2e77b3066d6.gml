/// @description 
if (instance_exists(objSkeleton)){
	with (other){
		experience += other.expPoints;
		
		if(experience >= maxExperience){
			level += 1;
			experience -= maxExperience;
			maxExperience += maxExperience;
			max_hp += 5;
			hp = max_hp;
			strength += 5;
		}
	}
}

instance_destroy();