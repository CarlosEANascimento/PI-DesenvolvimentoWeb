if(global.tab){
	#region general use variables
	var _gui_w = display_get_gui_width() - 1;
	var _gui_h = display_get_gui_height() - 1;
	
	var _margin = 8;
	
	var _font = fnt_consolas;
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
	draw_rectangle_color_width(_side_tab_x1, _side_tab_y1, _side_tab_x2, _side_tab_y2, c_white, 4);
	
	//console
	draw_rectangle_color(_console_x1, _console_y1, _console_x2, _console_y2, c_black, c_black, c_black, c_black, 0);
	draw_rectangle_color_width(_console_x1, _console_y1, _console_x2, _console_y2, c_white, 4);
	#endregion
	
	if(mouse_check_button_released_in_gui_area(_console_x1, _console_y1, _console_x2, _console_y2, mb_left)){
		global.console_select = true;
	}
	
	if(mouse_check_button_released_out_gui_area(_console_x1, _console_y1, _console_x2, _console_y2, mb_left)){
		global.console_select = false;
	}
	
	draw_text(_gui_w/2,_gui_h/2,global.console_select)
	
	//draw_set_font(_font);
	//draw_text(_gui_w/2 - string_width(keyboard_string)/2, _gui_h/2 - string_height(keyboard_string)/2,keyboard_string);
	
	//if(keyboard_check_released(vk_enter)){
	//	commands[n_command] = keyboard_string;
	//	n_command++;
	//	keyboard_string = "";
	//}
	
	//if(keyboard_check_released(vk_down) && (index_command - 1) >= 0){
	//	index_command--;
	//	keyboard_string = commands[index_command];
	//}else if(keyboard_check_released(vk_up) && (index_command + 1) <= n_command){
	//	index_command++;
	//	keyboard_string = commands[index_command];
	//}
}