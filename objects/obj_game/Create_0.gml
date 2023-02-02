score = 0;
lives = 3;
respawn = false;

draw_set_font(fnt_text);
alarm[0] = 60;

global.asteroid_limit = 128;

songloop = audio_play_sound(snd_songloop, 10, true)