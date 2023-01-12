///@description spawn_off_camera
///@arg obj
///@arg number

var obj = argument0;
var num = argument1;

var xx = random_range(0, room_width);
var yy = random_range(0, room_height);
instance_create_layer(xx, yy, "Instances", obj);