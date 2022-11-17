// Check if we are in the game and if we have more than 20 asteroids
if (room != rm_game) and (instance_count(obj_asteroid) >= 20) {
	exit;
}

if choose(0, 1) == 0 {
	var xx = choose(0, room_width);
	var yy = irandom_range(0, room_height);
} else {
	var xx = irandom_range(0, room_width);
	var yy = choose(0, room_height);
}

instance_create_layer(xx, yy, "Instances", obj_asteroid)

alarm[0] = 4*room_speed;