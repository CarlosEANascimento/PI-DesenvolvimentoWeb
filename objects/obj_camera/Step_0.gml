if(global.tab){
	cam_x = clamp(obj_player.x - ((resolution_w/ratio*zoom)/16)*10, 0, room_width - resolution_w/ratio*zoom);
	cam_y = clamp(obj_player.bbox_top - ((resolution_h/ratio*zoom)/4)*1.5, 0, room_height - resolution_h/ratio*zoom);
}else{
	cam_x = clamp(obj_player.x - (resolution_w/ratio*zoom)/2, 0, room_width - resolution_w/ratio*zoom);
	cam_y = clamp(obj_player.bbox_top - (resolution_h/ratio*zoom)/2, 0, room_height - resolution_h/ratio*zoom);
}

if(keyboard_check_released(vk_f5)){
	resolution_w = display_get_width();
	resolution_h = display_get_height();
	
	view_w = resolution_w/ratio;
	view_h = resolution_h/ratio;
	
	window_set_size(view_w * ratio, view_h * ratio);
	surface_resize(application_surface, view_w * ratio, view_h * ratio);
	camera_set_view_size(view_camera[0], resolution_w/ratio*zoom, resolution_h/ratio*zoom);
	
	window_center();
}

camera_set_view_pos(cam, cam_x, cam_y);
camera_set_view_size(cam, resolution_w/ratio*zoom, resolution_h/ratio*zoom);

if(!global.console_select){
	if(mouse_wheel_down() && zoom < 0.7){
		zoom += 0.01;
	}
	if(mouse_wheel_up() && zoom > 0.3){
		zoom -= 0.01;
	}
}