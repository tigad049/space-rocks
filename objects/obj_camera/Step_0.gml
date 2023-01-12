if instance_exists(target) {
	global.cameraX = target.x - (global.displayW/2);
	global.cameraY = target.y - (global.displayH/2);

	global.cameraX = clamp(global.cameraX, 0, room_width - global.displayW);
	global.cameraY = clamp(global.cameraY, 0, room_height - global.displayH);
	
	camera_set_view_pos(view_camera[0], global.cameraX, global.cameraY);
}