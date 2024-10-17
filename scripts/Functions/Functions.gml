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

function random_name(){
	var _random = irandom(30);

	switch (_random) {
	    case 0:  return "Alencar";
	    case 1:  return "Eurico";
	    case 2:  return "Galdino";
	    case 3:  return "Iara";
	    case 4:  return "Nivaldo";
	    case 5:  return "Aderbal";
	    case 6:  return "Dalva";
	    case 7:  return "Joares";
	    case 8:  return "Ziraldo";
	    case 9:  return "Marlon";
	    case 10: return "Valéria";
	    case 11: return "Ciro";
	    case 12: return "Leôncio";
	    case 13: return "Fabiano";
	    case 14: return "Ivone";
	    case 15: return "Olavo";
	    case 16: return "Tatiana";
	    case 17: return "Rogério";
	    case 18: return "Clarice";
	    case 19: return "Lauro";
	    case 20: return "Vera";
	    case 21: return "Carmem";
	    case 22: return "Artur";
	    case 23: return "Selma";
	    case 24: return "Rubens";
	    case 25: return "Nádia";
	    case 26: return "Osvaldo";
	    case 27: return "Marilda";
	    case 28: return "Edgar";
	    case 29: return "Sônia";
	    case 30: return "Flávio";
	    default: return "Desconhecido";
	}
}

function surname_by_type(_type){
	switch _type{
		case 0: return "Cantilena";
		case 1: return "Raízes";
		case 2: return "Sepulcro";
		case 3: return "Cinzento";
		case 4: return "Flecha-Ligeira";
		case 5: return "Sortílego";
	}
}