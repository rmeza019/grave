/// @description 
var enemyCount = instance_number(objEnemy);

if (instance_exists(objSkeleton) && enemyCount < objSkeleton.kills / 4){
	
	var enemy = choose(objKnight, objCrow, objCrow);
	var newX = random_range(220, room_width - 200);
	
	while point_distance(newX, 0, objSkeleton.x, 0) < 200 {
		newX = random_range(220, room_width - 220);
	}
	
	instance_create_layer(newX, objSkeleton.y, "Instances", enemy);
	
}