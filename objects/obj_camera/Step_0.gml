if instance_exists(target) {
	global.cameraX = target.x - (global.displayW/2);
	global.cameraY = target.y - (global.displayH/2);

	global.cameraX = clamp(global.cameraX, 0, room_width - global.displayW);
	global.cameraY = clamp(global.cameraY, 0, room_height - global.displayH);
	
	camera_set_view_pos(view_camera[0], global.cameraX, global.cameraY);
}

if (shake) 
	{ 
	shake_time -= 1; 
	var _xval = choose(-shake_magnitude + global.cameraX, shake_magnitude + global.cameraX); 
	var _yval = choose(-shake_magnitude + global.cameraY, shake_magnitude + global.cameraY); 
	camera_set_view_pos(view_camera[0], _xval, _yval); 

	if (shake_time <= 0) 
	{ 
		shake_magnitude -= shake_fade; 

		if (shake_magnitude <= 0) 
		{ 
		    camera_set_view_pos(view_camera[0], global.cameraX, global.cameraY); 
		    shake = false; 
		} 
	}
}