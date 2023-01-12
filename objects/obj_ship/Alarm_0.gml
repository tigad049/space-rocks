with(obj_asteroid) {
	speed = 1;
	spin_angle = old_spin_angle;
}

with(obj_debris) {
	speed = 1;
}

with(obj_bullet) {
	speed = 5;	
}

// Destroy ship
instance_destroy(self);

// Add particle effects
repeat(10){
	instance_create_layer(x, y, "Instances", obj_debris);
}

// Subtract a life
lives -= 1;