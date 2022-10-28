with (other) {
	instance_destroy();
	
	if (sprite_index == spr_asteroid_big) {
		repeat(2) {
			var init = instance_create_layer(x, y, "Instances", obj_asteroid);
			init.sprite_index = spr_asteroid_med
		}
	} else if (sprite_index == spr_asteroid_med) {
		repeat(2) {
			var init = instance_create_layer(x, y, "Instances", obj_asteroid);
			init.sprite_index = spr_asteroid_small
		}
	}
	
}

instance_destroy();