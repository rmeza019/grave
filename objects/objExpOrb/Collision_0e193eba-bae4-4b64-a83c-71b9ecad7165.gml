/// @description 
var dir = point_direction(other.x, other.y, x, y);
var accel = 0.5;
motion_add(dir, accel);
