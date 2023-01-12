// Check if we have more than 20 asteroids
if instance_number(obj_asteroid) >= 20 {
	alarm[0] = 4*room_speed;
	exit;
}

if choose(0, 1) == 0 {
	var xx = choose(0, room_width);
	var yy = irandom_range(0, room_height);
} else {
	var xx = irandom_range(0, room_width);
	var yy = choose(0, room_height);
}

var asteroid = instance_create_layer(xx, yy, "Instances", obj_asteroid)
with asteroid {
	image_alpha = 0;
}

alarm[0] = 4*room_speed;