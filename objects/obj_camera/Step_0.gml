if(global.tab){
	cam_x = clamp(obj_player.x - ((resolution_w/ratio*zoom)/16)*9, 0, room_width - resolution_w/ratio*zoom);
	cam_y = clamp(obj_player.bbox_top - ((resolution_h/ratio*zoom)/4)*1.5, 0, room_height - resolution_h/ratio*zoom);
}else{
	cam_x = clamp(obj_player.x - (resolution_w/ratio*zoom)/2, 0, room_width - resolution_w/ratio*zoom);
	cam_y = clamp(obj_player.bbox_top - (resolution_h/ratio*zoom)/2, 0, room_height - resolution_h/ratio*zoom);
}

camera_set_view_pos(cam, cam_x, cam_y);
camera_set_view_size(cam, resolution_w/ratio*zoom, resolution_h/ratio*zoom);

if(mouse_wheel_down() && zoom < 0.7){
	zoom += 0.01;
}
if(mouse_wheel_up() && zoom > 0.3){
	zoom -= 0.01;
}