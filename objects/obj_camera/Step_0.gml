if instance_exists(target) {
	cameraX = target.x - (displayW/2);
	cameraY = target.y - (displayH/2);

	cameraX = clamp(cameraX, 0, room_width - displayW);
	cameraY = clamp(cameraY, 0, room_height - displayH);
	
	camera_set_view_pos(view_camera[0], cameraX, cameraY);
}