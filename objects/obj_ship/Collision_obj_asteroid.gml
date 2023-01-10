// Ship gets drestroyed when colliding with an asteroid
instance_destroy(self);

// Add particle effects
repeat(10){
	instance_create_layer(x, y, "Instances", obj_debris);
}

// Subtract a life
lives -= 1;

// Spawn ship
instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_ship)