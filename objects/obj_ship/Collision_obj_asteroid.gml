// Ship gets drestroyed when colliding with an asteroid
instance_destroy(self);

repeat(10){
	instance_create_layer(x, y, "Instances", obj_debris);
}