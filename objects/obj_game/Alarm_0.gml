if (room == rm_game) {
	if instance_number(obj_asteroid) <= global.asteroid_limit {
		spawn_off_camera(obj_asteroid, 1);
	}
}

alarm[0] = 4*room_speed;