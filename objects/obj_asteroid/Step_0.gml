// Wrap around the window
move_wrap(true, true, sprite_width/2);

// Spin
image_angle += spin_angle;

// Fade in
image_alpha = clamp(image_alpha + 0.1, 0, 1);