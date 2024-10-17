x_axis = 0;
y_axis = 0;

sense = 1; //1 -> down, 0 -> side, -1 -> up

state_idle_walk = function(){
	if(!place_meeting(x+x_axis, y, obj_block)){
		hspeed = x_axis;
	}else{
		hspeed = 0;
	}
	if(!place_meeting(x, y+y_axis, obj_block)){
		vspeed = y_axis;
	}else{
		vspeed = 0;
	}
	
	if(x_axis == 0 && y_axis == 0){
		switch(sense){
			case -1: sprite_index = spr_player_up; break;
			case 1: sprite_index = spr_player_down; break;
			default: sprite_index = spr_player_side;
		}
	}else if(y_axis != 0){
		if(y_axis < 0){
			sprite_index = spr_player_walk_up;
		}else{
			sprite_index = spr_player_walk_down;
		}
		sense = y_axis;
	}else if(x_axis != 0){
		sprite_index = spr_player_walk_side;
		image_xscale = x_axis;
		sense = 0;
	}
}

state = state_idle_walk;