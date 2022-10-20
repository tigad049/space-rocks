// Choosing a sprite
sprite_index = choose(
	spr_asteroid_big, spr_asteroid_med, spr_asteroid_small
);

// Randomizing direction and angle
direction = irandom_range(0, 359);
image_angle = irandom_range(0, 359);

// Setting speed
speed = 1;