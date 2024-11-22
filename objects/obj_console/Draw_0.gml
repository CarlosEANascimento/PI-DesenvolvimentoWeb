if(global.tab){
	#region ação em função do comando que está sendo passado
	if(keyboard_string != ""){
		args_action = string_split_ext(keyboard_string, [".", "(", ")", "=", ","], true);
		var _action, _index_action;
		var _x, _y;
		var _error;
		var _valid_command = search_for_valid_command(args_action, arr_commands);
		
		if(_valid_command != noone){
			_action = _valid_command[0];
			_index_action = real(_valid_command[1]);
			
			switch _action{
				case "spawn":
					draw_cartesian_plan();
					
					try{
						_x = real(args_action[_index_action + 1]);
						_y = real(args_action[_index_action + 2]);
					}catch(_error){
						_x = floor(obj_player.x/16);
						_y = floor(obj_player.bbox_top/16);
					}
					
					draw_circle(_x * 16, _y * 16, 1, 0);
					break;
				case "upgrade":
					draw_cartesian_plan();
					
					try{
						draw_selection_area(args_action[_index_action + 1] * 16,args_action[_index_action + 2] * 16,args_action[_index_action + 3] * 16,args_action[_index_action + 4] * 16);
					}catch(_error){
						draw_selection_area(floor(obj_player.x/16)*16,floor(obj_player.bbox_top/16)*16,floor(obj_player.x/16)*16,floor(obj_player.bbox_top/16)*16);
					}
					break;
				case "interact":
					draw_mages_name();
					break;
				default:
					empty();
			}
		}
	}
	#endregion
}