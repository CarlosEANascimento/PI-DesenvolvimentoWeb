if(global.tab){
	#region general use variables
	var _gui_w = display_get_gui_width() - 1;
	var _gui_h = display_get_gui_height() - 1;
	
	var _margin = 8;
	
	var _font = fnt_consolas;
	
	var _i = 0;
	#endregion
	
	#region console & side tab variables
	var _side_tab_w = (_gui_w/16)*2;
	var _side_tab_h = _gui_h;
	var _console_w = _gui_w - _side_tab_w;
	var _console_h = _gui_h/4;

	var _side_tab_x1 = _margin;
	var _side_tab_y1 = _margin;
	var _side_tab_x2 = _side_tab_x1 + _side_tab_w - (_margin * 1.5);
	var _side_tab_y2 = _side_tab_y1 + _side_tab_h - (_margin * 2);

	var _console_x1 = _side_tab_w + (_margin * 0.5);
	var _console_y1 = _gui_h - _console_h + _margin;
	var _console_x2 = _console_x1 + _console_w - (_margin * 1.5);
	var _console_y2 = _console_y1 + _console_h - (_margin * 2);
	#endregion
	
	#region console & side tab drawing
	//side tab
	draw_rectangle_color(_side_tab_x1, _side_tab_y1, _side_tab_x2, _side_tab_y2, c_black, c_black, c_black, c_black, 0);
	draw_rectangle_color_width(_side_tab_x1, _side_tab_y1, _side_tab_x2, _side_tab_y2, c_white, 2);
	
	//console
	draw_rectangle_color(_console_x1, _console_y1, _console_x2, _console_y2, c_black, c_black, c_black, c_black, 0);
	draw_rectangle_color_width(_console_x1, _console_y1, _console_x2, _console_y2, c_white, 2);
	draw_rectangle_color_width(_console_x1 + _margin/2, _console_y1 + _margin/2, _console_x2 - _margin/2, _console_y2 - _margin/2, c_white, 1);
	#endregion
	
	#region global settings
	if(mouse_check_button_released_in_gui_area(_console_x1, _console_y1, _console_x2, _console_y2, mb_left)){
		global.console_select = true;
		keyboard_string = "";
	}
	
	if(mouse_check_button_released_out_gui_area(_console_x1, _console_y1, _console_x2, _console_y2, mb_left)){
		global.console_select = false;
	}
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
			
			index_command = n_command;
			
			keyboard_string = "";
			
			if(n_console_lines > _console_n_lines){
				offset++;
			}
			
			args_command = string_split_ext(actual_command, [".", "(", ")", "="], true);
			
			switch args_command[0]{
				case "obj_player":
					switch args_command[1]{
						case "state":
								switch args_command[2]{
									case "função":
											response = "atribuir novo estado de máquina";
										break;
									default:
										response = "comando não encontrado. tente novamente.";
								}
							break;
						default:
							response = "comando não encontrado. tente novamente.";
					}
					break;
				default:
					response = "comando não encontrado. tente novamente.";
			}
			
			console_lines[n_console_lines] = response;
			n_console_lines++;
					
			if(n_console_lines > _console_n_lines){
				offset++;
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
		if(n_console_lines > _console_n_lines){
			if(mouse_wheel_up() && offset + _console_n_lines - 1 > _console_n_lines){
				offset--;
			}else if(mouse_wheel_down() && offset + _console_n_lines + 1 <= n_console_lines){
				offset++;
			}
		}
		
		//repetir comandos dados anteriormente
		if(n_command > 0 && keyboard_check_released(vk_down) && index_command + 1 < n_command){
			index_command++;
			keyboard_string = commands[index_command];
		}else if(n_command > 0 && keyboard_check_released(vk_up) && index_command - 1 > -1){
			index_command--;
			keyboard_string = commands[index_command];
		}
	}
	
	//exibição de linhas anteriores do console
	if(n_console_lines <= _console_n_lines){
		for(_i = 0; _i < n_console_lines; _i++){
			draw_text(_console_textbox_x1, _console_textbox_y1 + _str_h * _i, console_lines[_i]);
		}
	}else if(n_console_lines > _console_n_lines){
		for(_i = 0; _i < _console_n_lines; _i++){
			draw_text(_console_textbox_x1, _console_textbox_y1 + _str_h * _i, console_lines[_i + offset]);
		}
	}
	#endregion
	
	#region ação em função do comando que esta sendo passado
	//if(keyboard_string != ""){
	//	args_action = string_split_ext(keyboard_string, [".", "(", ")", "="], true);
	//	var _action = search_for_valid_command(args_action, arr_commands);
		
	//	if(){
			
	//	}
	//}
	#endregion
}
n++;