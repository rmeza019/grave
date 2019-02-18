if hp <= 0 {
	instance_destroy();
	
	repeat(expPoints){
		instance_create_layer(x, y, "Effects", objExpOrb);
	}
}