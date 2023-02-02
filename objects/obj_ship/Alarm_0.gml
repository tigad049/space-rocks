screenshake(3, 10, 0.5);

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

audio_resume_sound(obj_game.songloop);
audio_resume_sound(snd_ast_explode);
audio_resume_sound(snd_plr_shoot);
audio_play_sound(snd_plr_explode, 1, false, 0.5);

// Destroy ship
instance_destroy(self);

// Add particle effects
repeat(10){
	instance_create_layer(x, y, "Instances", obj_debris);
}

// Subtract a life
lives -= 1;