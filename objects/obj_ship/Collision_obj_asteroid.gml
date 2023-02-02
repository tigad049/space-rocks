if not invincible {
	if (alarm[0] <= 0) {
		alarm[0] = 30;
		speed = 0;
		take_inputs = false;
		with(obj_asteroid) {
			speed = 0;
			old_spin_angle = spin_angle;
			spin_angle = 0;
		}
		with(obj_debris) {
			image_alpha += 0.01;
			speed = 0;
		}
		with(obj_bullet) {
			speed = 0;
		}
		screenshake(0.5, 3, 0.5);
		
		audio_pause_sound(snd_ast_explode);
		audio_pause_sound(snd_plr_shoot);
		audio_pause_sound(obj_game.songloop);
		audio_play_sound(snd_plr_hitstop, 1, false, 0.5);
	}
}