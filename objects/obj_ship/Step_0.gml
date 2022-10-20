if keyboard_check(vk_left) {
	image_angle += 5;
}

if keyboard_check(vk_right) {
	image_angle -= 5;
}

if keyboard_check(vk_up) {
	motion_add(image_angle, 0.05);
}

if keyboard_check(vk_down) {
	motion_add(image_angle, -0.05);
}

if not (keyboard_check(vk_up) or keyboard_check(vk_down)){
	speed *= 0.95;
}

if speed > 5 {
	speed = 5;
}

move_wrap(true, true, sprite_width/2);