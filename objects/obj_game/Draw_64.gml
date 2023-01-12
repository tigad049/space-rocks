switch(room) {
	case rm_game:
		draw_text(20, 20, "SCORE: " + string(score));
		draw_text(20, 40, "LIVES: " + string(lives));
		break;
	
	case rm_start:
		draw_set_alpha(0.5);
		draw_set_colour(c_black);
		draw_rectangle(0, 0, room_width, room_height, false);
		
		draw_set_alpha(1);
		draw_set_colour(c_white);
		
		draw_set_halign(fa_center);
		
		var c = c_yellow;
		draw_text_transformed_color(room_width/2, room_height/4, 
		"SPACE ROCKS", 3, 3, 0, c, c, c, c, 1);
		
		draw_text(room_width/2, room_height/2, 
			@"Score 1,000 points to win!

			UP/DOWN: move forwards/backwards
			LEFT/RIGHT: turn left/right
			SPACE: shoot

			>>> PRESS ENTER TO START <<<"
		);
		
		draw_set_halign(fa_left);
		
		break;
	
	case rm_win:
		draw_set_alpha(0.5);
		draw_set_colour(c_black);
		draw_rectangle(0, 0, room_width, room_height, false);
		
		draw_set_alpha(1);
		draw_set_colour(c_white);
		
		draw_set_halign(fa_center);
		
		var c = c_lime;
		draw_text_transformed_color(room_width/2, room_height/3, 
		"YOU WIN!", 3, 3, 0, c, c, c, c, 1);
		
		draw_text(room_width/2, room_height/2, 
			">>> PRESS ENTER TO RESTART <<<"
		);
		
		draw_set_halign(fa_left);
		break;
	
	case rm_gameover:
		draw_set_alpha(0.5);
		draw_set_colour(c_black);
		draw_rectangle(0, 0, room_width, room_height, false);
		
		draw_set_alpha(1);
		draw_set_colour(c_white);
		
		draw_set_halign(fa_center);
		
		var c = c_red;
		draw_text_transformed_color(room_width/2, room_height/3, 
		"GAME OVER", 3, 3, 0, c, c, c, c, 1);
		
		draw_text(room_width/2, room_height/2, 
			"FINAL SCORE: " + string(score) + @"
			
			>>> PRESS ENTER TO RESTART <<<"
		);
		
		draw_set_halign(fa_left);
		break;
}