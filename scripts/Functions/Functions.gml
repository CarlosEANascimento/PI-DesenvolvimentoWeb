function draw_rectangle_color_width(_x1, _y1, _x2, _y2, _color, _w){
	var _hw = _w/2;
	//superior
	draw_line_width_color(_x1 - _hw, _y1, _x2 + _hw, _y1, _w, _color, _color);
	//direita
	draw_line_width_color(_x2, _y1 - _hw, _x2, _y2 + _hw, _w, _color, _color);
	//inferior
	draw_line_width_color(_x1 - _hw, _y2, _x2 + _hw, _y2, _w, _color, _color);
	//esquera
	draw_line_width_color(_x1, _y1 - _hw, _x1, _y2 + _hw, _w, _color, _color);
}

function mouse_check_button_released_in_gui_area(_x1, _y1, _x2, _y2, _mb){
	if(mouse_check_button_released(_mb)){
		if(device_mouse_x_to_gui(0) >= _x1 && device_mouse_x_to_gui(0) <= _x2 && device_mouse_y_to_gui(0) >= _y1 && device_mouse_y_to_gui(0) <= _y2){
			return 1;
		}
		return 0;
	}
}

function mouse_check_button_released_out_gui_area(_x1, _y1, _x2, _y2, _mb){
	if(mouse_check_button_released(_mb)){
		if(device_mouse_x_to_gui(0) < _x1 || device_mouse_x_to_gui(0) > _x2 || device_mouse_y_to_gui(0) < _y1 || device_mouse_y_to_gui(0) > _y2){	
			return 1;
		}
		return 0;
	}
}