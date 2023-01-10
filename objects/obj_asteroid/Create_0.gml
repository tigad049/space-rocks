// Choosing a sprite
sprite_index = choose(
	spr_asteroid_big, spr_asteroid_med, spr_asteroid_small
);

// Randomizing direction and angle
direction = irandom_range(0, 359);
image_angle = irandom_range(0, 359);

// Setting speed
speed = 1;

// Decides which way to spin
spin_angle = irandom_range(-3, 3);
old_spin_angle = 0;