global.cameraX = 0;
global.cameraY = 0;
target = obj_ship;

global.displayW = 640;
global.displayH = 480;

view_enabled = true;
view_visible[0] = true;

camera_set_view_size(view_camera[0], global.displayW, global.displayH);
window_set_size(global.displayW, global.displayH);

alarm[0] = 1;