/// @description 
var cameraId = view_camera[0];
var viewWidth = camera_get_view_width(cameraId);
var viewHeight = camera_get_view_height(cameraId);

display_set_gui_size(viewWidth, viewHeight);
draw_set_font(fntHud);

if (instance_exists(objSkeleton)) {
	drawHp = objSkeleton.hp;
	drawMaxHp = objSkeleton.max_hp;
}
