///@description screenshake(time, magnitude, fade);
///@arg time
///@arg magnitude
///@arg fade
function screenshake(time, magnitude, fade) {
	with(obj_camera) {
		shake = true;
		shake_time = time
		shake_magnitude = magnitude
		shake_fade = fade
	}
}