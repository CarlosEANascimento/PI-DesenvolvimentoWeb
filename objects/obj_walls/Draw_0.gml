if(obj_player.y > y){
	depth = obj_player.depth + 1
}else{
	depth = obj_player.depth - 1
}

if(place_meeting(x, y + 16, obj_walls)){
	draw_sprite_part(spr_walls, 0, sprites_v_juction[level][0], sprites_v_juction[level][1], wall_v_junction_w, wall_v_junction_h, x - wall_w/2, y - wall_h + 1);
}else{
	draw_sprite_part(spr_walls, 0, sprites_wall[level][0], sprites_wall[level][1], wall_w, wall_h, x - wall_w/2, y - wall_h + 1);
}

if(place_meeting(x + 16, y, obj_walls)){
	draw_sprite_part(spr_walls, 0, sprites_h_juction[level][0], sprites_h_juction[level][1], wall_h_junction_w, wall_h_junction_h, x + wall_w/2 - 1, y - wall_h + 3);
}

//draw_sprite_part(spr_walls, 0, sprites_v_juction[level][0], sprites_v_juction[level][1], wall_v_junction_w, wall_v_junction_h, x - wall_w/2, y - wall_h + 1);

//with(obj_walls){
//	if(id != other.id){
//		draw_sprite_part(spr_walls, 0, sprites_wall[level][0], sprites_wall[level][1], wall_w, wall_h, x - wall_w/2, y - wall_h + 1);
//	}
	
//	if((id != other.id) && (y < other.y) && (x == other.x)){
//		draw_sprite_part(spr_walls, 0, sprites_v_juction[level][0], sprites_v_juction[level][1], wall_v_junction_w, wall_v_junction_h, x - wall_w/2, y - wall_h + 1);
//	}
	
//	if((id != other.id) && (other.x > x) && (other.y == y)){
//		draw_sprite_part(spr_walls, 0, sprites_h_juction[level][0], sprites_h_juction[level][1], wall_h_junction_w, wall_h_junction_h, x + wall_w/2 - 1, y - wall_h + 3);
//	}
//}