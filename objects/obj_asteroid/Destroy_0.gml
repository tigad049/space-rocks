switch (sprite_index)
{
	case spr_asteroid_big:
		screenshake(10, 5, 0.4);
		audio_play_sound(snd_ast_explode, 1, false, 0.25, 0, 0.75);
		break;
	
	case spr_asteroid_med:
		screenshake(8, 3, 0.3);
		audio_play_sound(snd_ast_explode, 1, false, 0.25, 0, 1);
		break;
	
	case spr_asteroid_small:
		screenshake(6, 1, 0.2);
		audio_play_sound(snd_ast_explode, 1, false, 0.25, 0, 1.5);
		break;
}