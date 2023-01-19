if image_alpha > 0 {
	image_alpha = 0;
} else if image_alpha < 1 {
	image_alpha = 1;
}

if invincible {
	alarm[2] = 4;
} else {
	image_alpha = 1;
}