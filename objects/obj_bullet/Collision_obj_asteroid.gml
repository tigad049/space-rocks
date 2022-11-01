// ad score
score += 10;

with (other) {
	// Destroy the asteroid
	instance_destroy();
	
	// Split into 2 smaller asteroids if needed
	if (sprite_index == spr_asteroid_big) { // Big -> Medium
		repeat(2) {
			var init = instance_create_layer(x, y, "Instances", obj_asteroid);
			init.sprite_index = spr_asteroid_med
		}
	} else if (sprite_index == spr_asteroid_med) { // Medium -> Small
		repeat(2) {
			var init = instance_create_layer(x, y, "Instances", obj_asteroid);
			init.sprite_index = spr_asteroid_small
		}
	}
	
}

// Destroy the bullet as well
instance_destroy();