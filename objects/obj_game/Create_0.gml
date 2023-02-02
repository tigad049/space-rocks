score = 0;
lives = 3;
respawn = false;

draw_set_font(fnt_text);
alarm[0] = 60;

global.asteroid_limit = 128;

audio_play_sound(snd_songloop_menu, 10, true);