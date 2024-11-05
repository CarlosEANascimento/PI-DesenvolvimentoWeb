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

function search_for_valid_command(_args_arr, _commands_list){
	if(!is_array(_args_arr) || !is_array(_commands_list)){
		return noone;
	}
	
	var _i = 0;
	var _j = 0;
	var _return = [];
	
	while(_j < array_length(_commands_list)){
		for(_i = array_length(_args_arr) - 1; _i >= 0; _i--){
			if(_commands_list[_j] == _args_arr[_i]){
				_return = [_args_arr[_i],_i];
				return _return;
			}
		}
		_j++;
	}
	return noone;
}

function draw_selection_area(_x1 = 0, _y1 = _x1, _x2 = _x1, _y2 = _x1){
	var _hw = 1;
	
	//superior
	draw_line_width_color(_x1 - _hw, _y1, _x2 + _hw, _y1, 2, c_white, c_white);
	//direita											  
	draw_line_width_color(_x2, _y1 - _hw, _x2, _y2 + _hw, 2, c_white, c_white);
	//inferior											 
	draw_line_width_color(_x1 - _hw, _y2, _x2 + _hw, _y2, 2, c_white, c_white);
	//esquera											  
	draw_line_width_color(_x1, _y1 - _hw, _x1, _y2 + _hw, 2, c_white, c_white);
}

function draw_selected_point(_x, _y){
	draw_circle(_x, _y, 4, 0);
}

function toelement(_element){
	switch _element{
		case "bloco": return obj_block;
		case "bardo": return obj_mage_bard;
		case "alvo": return obj_target;
		case "monstro": return obj_blinded_grimlock;
		case "wall": return obj_walls;
	}
}

function array_find_element(_arr, _elmnt){
	if(!is_array(_arr)){
		return -1;
	}
	
	var _arr_length = array_length(_arr);
	
	if(_arr_length == 0){
		return - 1;
	}
	
	var _i;
	
	for(_i = 0; _i < _arr_length; _i++){
		if(_arr[_i] == _elmnt){
			return _i;
		}
	}
	
	return -1;
}

function draw_side_tab_tips(_arr, _xpos_in, _ypos_in, _text_w, _str_h, _lines_limitation, _offset = 0){
	var _i,_l;
	if(!is_array(_arr)){
		draw_text_ext(_xpos_in, _ypos_in, "Nenhum comando encontrado",0,_text_w)
	}else{
		_l = (array_length(_arr) < _offset + _lines_limitation)? array_length(_arr) : _lines_limitation - 1 ;
		draw_text(500,250,_l);
		draw_text(500,260,array_length(_arr));
		draw_text(500,270,string(_offset + _lines_limitation));
		
		for(_i = 0; _i < _l; _i++){
			draw_text_ext(_xpos_in, _ypos_in + _str_h * _i, _arr[_offset + _i],0,_text_w);
		}
	}
}

function mouse_in_gui_area(_x1, _x2, _y1, _y2){
	if(device_mouse_x_to_gui(0) > _x1 && device_mouse_x_to_gui(0) < _x2 && device_mouse_y_to_gui(0) > _y1 && device_mouse_y_to_gui(0) < _y2){
		return 1;
	}
	return 0;
}