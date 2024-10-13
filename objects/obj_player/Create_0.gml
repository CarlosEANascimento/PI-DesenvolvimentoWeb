x_axis = 0;
y_axis = 0;

sense = 1; //1 -> down, 0 -> side, -1 -> up

state_idle_walk = function(){
	vspeed = y_axis;
	hspeed = x_axis;
	
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