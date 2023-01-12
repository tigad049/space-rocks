if take_inputs {
	// Turning with left and right arrow keys
	if keyboard_check(vk_left) {
		image_angle += 5;
	}

	if keyboard_check(vk_right) {
		image_angle -= 5;
	}

	// Moving with up and down arrow keys
	if keyboard_check(vk_up) {
		motion_add(image_angle, 0.05);
	}

	if keyboard_check(vk_down) {
		motion_add(image_angle, -0.05);
	}
	
	//Shooting
	if keyboard_check_pressed(vk_space) {
		instance_create_layer(x, y, "Instances", obj_bullet);
	}
}

// Friction
if not (keyboard_check(vk_up) or keyboard_check(vk_down)){
	speed *= 0.95;
}

// Limit speed so we don't go too fast if the player holds down Up
if speed > 5 {
	speed = 5;
}

// Wrap around the window
move_wrap(true, true, sprite_width/2);