/// @description 
right = 0;
left = 0;
attack = 0;
roll = 0;
numGamepads = gamepad_get_device_count();

for (var i = 0; i < numGamepads; i++;){
   if gamepad_is_connected(i) {
		global.gp[i] = true 
	} else { 
		global.gp[i] = false;}
}

keyboard_set_map(ord("A"),vk_left);
keyboard_set_map(ord("D"),vk_right);
keyboard_set_map(ord("K"),ord("Z"));
keyboard_set_map(ord("J"),vk_space);
