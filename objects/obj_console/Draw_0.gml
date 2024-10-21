if(global.tab){
	#region ação em função do comando que está sendo passado
	if(keyboard_string != ""){
		args_action = string_split_ext(keyboard_string, [".", "(", ")", "=", ","], true);
		var _action, _index_action;
		var _x, _y;
		var _valid_command = search_for_valid_command(args_action, arr_commands);
		
		if(_valid_command != noone){
			_action = _valid_command[0];
			_index_action = real(_valid_command[1]);
			
			switch _action{
				case "spawn":
					draw_cartesian_plan();
					
					_x = (_index_action + 1 < array_length(args_action))? real(args_action[_index_action + 1]) : floor(obj_player.x/16);
					_y = (_index_action + 2 < array_length(args_action))? real(args_action[_index_action + 2]) : floor(obj_player.bbox_top/16);
					
					draw_circle(_x * 16, _y * 16, 1, 0);
					break;
				default:
					empty();
			}
		}
	}
	#endregion
}