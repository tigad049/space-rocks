// Check if we still have lives
if (lives <= 0) {
	room_goto(rm_gameover);
	exit;
}

// Spawn ship
instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_ship);