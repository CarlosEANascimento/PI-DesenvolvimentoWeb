if(global.tab){
	#region general use variables
	var _gui_w = display_get_gui_width() - 1;
	var _gui_h = display_get_gui_height() - 1;
	
	var _margin = 8;
	
	var _font = fnt_consolas;
	
	var _i = 0;
	
	var _error;
	#endregion
	
	#region console & side tab & quests variables
	var _side_tab_w = (_gui_w/16)*4;
	var _side_tab_h = _gui_h/2;
	var _quest_tab_w = _side_tab_w;
	var _quest_tab_h = _gui_h/2;
	var _console_w = _gui_w - _side_tab_w;
	var _console_h = _gui_h/4;

	var _side_tab_x1 = _margin;
	var _side_tab_y1 = _margin;
	var _side_tab_x2 = _side_tab_x1 + _side_tab_w - (_margin * 1.5);
	var _side_tab_y2 = _side_tab_y1 + _side_tab_h - (_margin);

	var _quest_tab_x1 = _margin;
	var _quest_tab_y1 = _side_tab_y2 + (_margin);
	var _quest_tab_x2 = _quest_tab_x1 + _quest_tab_w - (_margin * 1.5);
	var _quest_tab_y2 = _quest_tab_y1 + _quest_tab_h - (_margin * 2);

	var _console_x1 = _side_tab_w + (_margin * 0.5);
	var _console_y1 = _gui_h - _console_h + _margin;
	var _console_x2 = _console_x1 + _console_w - (_margin * 1.5);
	var _console_y2 = _console_y1 + _console_h - (_margin * 2);
	#endregion
	
	#region global settings
	if(mouse_check_button_released_in_gui_area(_console_x1, _console_y1, _console_x2, _console_y2, mb_left)  || mouse_check_button_released_in_gui_area(_side_tab_x1, _side_tab_y1, _side_tab_x2, _side_tab_y2, mb_left)){
		global.console_select = true;
		keyboard_string = "";
	}
	
	if(mouse_check_button_released_out_gui_area(_console_x1, _console_y1, _console_x2, _console_y2, mb_left) && mouse_check_button_released_out_gui_area(_side_tab_x1, _side_tab_y1, _side_tab_x2, _side_tab_y2, mb_left)){
		global.console_select = false;	
	}
	#endregion
	
	#region console & side tab & questss drawing
	//side tab
	draw_rectangle_color(_side_tab_x1, _side_tab_y1, _side_tab_x2, _side_tab_y2, c_black, c_black, c_black, c_black, 0);
	draw_rectangle_color_width(_side_tab_x1, _side_tab_y1, _side_tab_x2, _side_tab_y2, c_white, 2);
	
	draw_rectangle_color(_quest_tab_x1, _quest_tab_y1, _quest_tab_x2, _quest_tab_y2, c_black, c_black, c_black, c_black, 0);
	draw_rectangle_color_width(_quest_tab_x1, _quest_tab_y1, _quest_tab_x2, _quest_tab_y2, c_white, 2);
	
	//console
	draw_rectangle_color(_console_x1, _console_y1, _console_x2, _console_y2, c_black, c_black, c_black, c_black, 0);
	draw_rectangle_color_width(_console_x1, _console_y1, _console_x2, _console_y2, c_white, 2);
	draw_rectangle_color_width(_console_x1 + _margin/2, _console_y1 + _margin/2, _console_x2 - _margin/2, _console_y2 - _margin/2, c_white, 1);
	#endregion
	
	#region console text box variables
	draw_set_font(_font);
	var _str_h = string_height("AAA");
	var _console_textbox_h = floor(((_console_y2 - _console_y1) - (_margin * 4))/_str_h) * _str_h;
	var _console_textbox_x1 = _console_x1 + _margin*2;
	var _console_textbox_x2 = _console_x2 - _margin*2;
	var _console_textbox_y1 = _console_y2 - _console_h/2 - _console_textbox_h/2;
	var _console_textbox_y2 = _console_y1 + _console_h/2 + _console_textbox_h/2
	var _console_textbox_w = _console_textbox_x2 - _console_textbox_x1;
	
	var _console_n_lines = floor(((_console_y2 - _console_y1) - (_margin * 4))/_str_h);
	
	var _response = "";
	var _list = ds_list_create();
	var _num;
	#endregion
	
	#region console text
	//interações e ações do console que só serão habilitadas quando o console for selecionado
	if(global.console_select){
		//pegar e computar comando dado
		if(keyboard_check_released(vk_enter) && keyboard_string != ""){
			actual_command = keyboard_string;
			commands[n_commands] = keyboard_string;
			console_lines[n_console_lines] = keyboard_string;
			
			n_commands++;
			n_console_lines++;
			
			index_selected_command = n_commands;
			
			keyboard_string = "";
			
			if(n_console_lines > _console_n_lines){
				console_offset++;
			}
			
			args_command = string_split_ext(actual_command, [".", "(", ")", "=", ","], true);
			
			try{
				switch args_command[0]{
					case "obj_player":
						switch args_command[1]{
							case "state":
									switch args_command[2]{
										case "função":
												_response = "atribuir novo estado de máquina";
											break;
										default:
											_response = "comando não encontrado. tente novamente.";
									}
								break;
							default:
								_response = "comando não encontrado. tente novamente.";
						}
						break;
					case "spawn":
						_response = instance_create_layer(real(args_action[1])*16,real(args_action[2])*16,"Instances_1",toelement(args_action[3]));
						_response.depth = 0 + instance_number(obj_walls);
						break;
					case "upgrade":
						_num = collision_rectangle_list(args_command[1]*16,args_command[2]*16,args_command[3]*16,args_command[4]*16,obj_walls,0,1,_list,1);
						
						if(_num > 0){
							for(_i = 0; _i < _num; _i++){
								if(_list[| _i].level + 1 < 3){
									_list[| _i].level++;
								}
							}
							_response = string(_num) + " paredes foram melhoradas.";
						}else{
							_response = "Nenhuma parede encontrada.";
						}
						break;
					default:
						_response = "comando não encontrado. tente novamente.";
				}
			}catch(_response){
				_response = "comando não encontrado. tente novamente.";
			}
			
			console_lines[n_console_lines] = _response;
			n_console_lines++;
					
			if(n_console_lines > _console_n_lines){
				console_offset++;
			}
		}
		
		//desenhar comando que está sendo dado
		if(_console_n_lines > n_console_lines){
			draw_text_ext(_console_textbox_x1, _console_textbox_y1 + _str_h * n_console_lines, keyboard_string, 0, _console_textbox_w);
			draw_set_alpha(sin(n * 0.25));
			draw_line_width(_console_textbox_x1 + string_width(keyboard_string), _console_textbox_y1 + _str_h * n_console_lines, 
				_console_textbox_x1 + string_width(keyboard_string), _console_textbox_y1 + _str_h * n_console_lines + _str_h, 2);
			draw_set_alpha(1);
		}else if(_console_n_lines <= n_console_lines){
			draw_text_ext(_console_textbox_x1, _console_textbox_y1 + _str_h * _console_n_lines, keyboard_string, 0, _console_textbox_w);
			draw_set_alpha(sin(n * 0.25));
			draw_line_width_color(_console_textbox_x1 + string_width(keyboard_string), _console_textbox_y1 + _str_h * _console_n_lines,
				_console_textbox_x1 + string_width(keyboard_string), _console_textbox_y1 + _str_h * _console_n_lines + _str_h, 2, c_white, c_white);
			draw_set_alpha(1);
		}
		
		//scrollar o console
		if(n_console_lines > _console_n_lines && mouse_in_gui_area(_console_textbox_x1, _console_textbox_x2, _console_textbox_y1, _console_textbox_y2) == 1){
			if(mouse_wheel_up() && console_offset + _console_n_lines - 1 >= _console_n_lines){
				console_offset--;
			}else if(mouse_wheel_down() && console_offset + _console_n_lines + 1 <= n_console_lines){
				console_offset++;
			}
		}
		
		//repetir comandos dados anteriormente
		if(n_commands > 0 && keyboard_check_released(vk_down) && index_selected_command + 1 < n_commands){
			index_selected_command++;
			show_debug_message(index_selected_command);
			keyboard_string = commands[index_selected_command];
		}else if(n_commands > 0 && keyboard_check_released(vk_up) && index_selected_command - 1 > -1){
			index_selected_command--;
			show_debug_message(index_selected_command);
			keyboard_string = commands[index_selected_command];
		}
	}
	
	
	//exibição de linhas anteriores do console
	if(n_console_lines <= _console_n_lines){
		for(_i = 0; _i < n_console_lines; _i++){
			draw_text(_console_textbox_x1, _console_textbox_y1 + _str_h * _i, console_lines[_i]);
		}
	}else if(n_console_lines > _console_n_lines){
		for(_i = 0; _i < _console_n_lines; _i++){
			draw_text(_console_textbox_x1, _console_textbox_y1 + _str_h * _i, console_lines[_i + console_offset]);
		}
	}
	#endregion
	
	#region sidetab text box variables
	var _side_tab_textbox_x1 = _side_tab_x1 + _margin * 1;
	var _side_tab_textbox_x2 = _side_tab_x2 - _margin * 1;
	var _side_tab_textbox_y1 = _side_tab_y1 + _margin * 1.5;
	var _side_tab_textbox_y2 = _side_tab_y2 - _margin * 1.5;
	
	var _side_tab_n_lines = ceil(((_side_tab_y2 - _side_tab_y1) - (_margin * 4))/_str_h);
	#endregion
	
	#region side tab text dicas de comandos
	var _args_action, _action, _valid_command, _n_side_tab_tips_lines;
	
	if(global.console_select){
		_args_action = string_split_ext(keyboard_string, [".", "(", ")", "=", ","], true);
		_valid_command = search_for_valid_command(_args_action, arr_commands);
	
		try{
			if(array_length(side_tab_tips[side_tab_tips_index_correspondant(_action)]) > _side_tab_n_lines && mouse_in_gui_area(_side_tab_textbox_x1, _side_tab_textbox_x2, _side_tab_textbox_y1, _side_tab_textbox_y2) == 1){
				if(mouse_wheel_up() && side_tab_offset + _side_tab_n_lines - 1 >= _side_tab_n_lines){
					side_tab_offset--;
				}else if(mouse_wheel_down() && side_tab_offset + _side_tab_n_lines + 1 <= array_length(side_tab_tips[side_tab_tips_index_correspondant(_action)])){
					side_tab_offset++;
				}
			}
		}catch(_error){
			show_debug_message(_error);
		}
	}
	
	try{
		_action = _valid_command[0];
	}catch(_error){
		_action = -1;
	}
	
	_n_side_tab_tips_lines = array_length(side_tab_tips[side_tab_tips_index_correspondant(_action)]);
	
	if(_n_side_tab_tips_lines <= _side_tab_n_lines){
		for(_i = 0; _i < _n_side_tab_tips_lines; _i++){
			draw_text(_side_tab_textbox_x1, _side_tab_textbox_y1 + _str_h * _i, side_tab_tips[side_tab_tips_index_correspondant(_action),_i]);
		}
	}else if(_n_side_tab_tips_lines > _side_tab_n_lines){
		for(_i = 0; _i < _side_tab_n_lines; _i++){
			draw_text(_side_tab_textbox_x1, _side_tab_textbox_y1 + _str_h * _i, side_tab_tips[side_tab_tips_index_correspondant(_action),_i + side_tab_offset]);
		}
	}
	#endregion
}
n++;