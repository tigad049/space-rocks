// Delete if we're outside of the camera
if not point_in_rectangle(x, y,
	global.cameraX, global.cameraY,
	(global.cameraX + global.displayW),
	(global.cameraY + global.displayH)
) {
	instance_destroy();
}