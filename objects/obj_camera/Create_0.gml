cameraX = 0;
cameraY = 0;
target = obj_ship;

displayW = 640;
displayH = 480;

view_enabled = true;
view_visible[0] = true;

camera_set_view_size(view_camera[0], displayW, displayH);
window_set_size(displayW, displayH);

alarm[0] = 1;