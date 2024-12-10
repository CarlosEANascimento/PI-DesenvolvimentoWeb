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
	    case 0:  return "Alan";
	    case 1:  return "Erik";
	    case 2:  return "Gabi";
	    case 3:  return "Iara";
	    case 4:  return "Nilo";
	    case 5:  return "Adel";
	    case 6:  return "Dani";
	    case 7:  return "Joao";
	    case 8:  return "Zeca";
	    case 9:  return "Marcos";
	    case 10: return "Val";
	    case 11: return "Ciro";
	    case 12: return "Leo";
	    case 13: return "Fabio";
	    case 14: return "Ivo";
	    case 15: return "Olaf";
	    case 16: return "Tati";
	    case 17: return "Roger";
	    case 18: return "Clara";
	    case 19: return "Leo";
	    case 20: return "Vivi";
	    case 21: return "Cami";
	    case 22: return "Art";
	    case 23: return "Selma";
	    case 24: return "Rubi";
	    case 25: return "Nana";
	    case 26: return "Ozzy";
	    case 27: return "Mari";
	    case 28: return "Edi";
	    case 29: return "Sofia";
	    case 30: return "Flavio";
	}
}

function surname_by_type(_type){
	switch (_type) {
		case 0: return "Canto";
		case 1: return "Raiz";
		case 2: return "Sepulcro";
		case 3: return "Cinza";
		case 4: return "Flecha";
		case 5: return "Sorte";
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
		case "wall": return obj_walls;
		
		case "bardo": return obj_mage_bard;
		case "druida": return obj_mage_druid;
		case "fogo": return obj_mage_pyromancer;
		case "necro": return obj_mage_necromancer;
		case "ranger": return obj_mage_halfling_ranger;
		case "mago": return obj_mage_deft_sorceress;
		
		case "alvo": return obj_target;
		case "mons": return obj_blinded_grimlock;
		case "cavre": return obj_corrupted_treant;
		case "gavre": return obj_grizzled_treant;
		case "slaad": return obj_crimson_slaad;
		case "death": return obj_death_slime;
		case "cogu": return obj_fungal_myconid;
		case "wisp": return obj_glowing_wisp;
		case "amongus": return obj_humongous_ettin;
		case "ochre": return obj_ochre_jelly;
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

function search_mage_by_name(_name){
	with(obj_mages){
		if(id != other.id && mage.name_surname == _name){
			return 1;
		}
	}
	return 0;
}

function get_mage_id_by_name(_name){
	with(obj_mages){
		if(mage.name_surname == _name){
			return id;
		}
	}
	return noone;
}

function search_mage_by_name_within_area(_name, _x1, _y1, _x2, _y2){
	var _ls = ds_list_create();
	var _nm = collision_ellipse_list(_x1, _y1, _x2, _y2, obj_mages, 0, 1, _ls, 0);
	
	if(_nm <= 0){
		ds_list_destroy(_ls);
		return noone;
	}
	
	var _i, _ret;
	
	for(_i = 0; _i < _nm; _i++){
		if(_ls[| _i].mage.name_surname == _name){
			_ret = _ls[| _i].id;
			ds_list_destroy(_ls);
			return _ret;
		}
	}
	
	ds_list_destroy(_ls);
	return noone;
}

function material_name(_type){
	switch _type{
		case 0: return "Moeda";
		case 1: return "Osso";
		case 2: return "Madeira corrompida";
		case 3: return "Presa";
		case 4: return "Carne";
		case 5: return "Geleia";
		case 6: return "Cogumelo";
		case 7: return "Geleia ocre";
		case 8: return "Estilhaço";
		case 9: return "Madeira";
	}
}

function can_be_real(_str){
	var _num = real(_str);
    return (string(_num) == _str);
}