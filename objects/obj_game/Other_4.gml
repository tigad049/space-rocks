if (room == rm_game) {
	audio_stop_sound(snd_songloop_menu);
	songloop = audio_play_sound(snd_songloop, 10, true);
	spawn_off_camera(obj_asteroid, global.asteroid_limit/2);
} else {
	repeat(global.asteroid_limit/4) {
		var xx = choose(
			irandom_range(0, room_width*0.3),
			irandom_range(room_width*0.7, room_width)
		);
	
		var yy = choose(
			irandom_range(0, room_height*0.3),
			irandom_range(room_height*0.7, room_height)
		);
		instance_create_layer(xx, yy, "Instances", obj_asteroid)
	}
}