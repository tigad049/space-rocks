if (alarm[0] <= 0) {
	alarm[0] = 30;
	with(obj_asteroid) {
		speed = 0;
		old_spin_angle = spin_angle;
		spin_angle = 0;
	}
}