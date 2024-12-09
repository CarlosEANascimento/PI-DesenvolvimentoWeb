depth = y * (-1);

if(life <= 0){
	sprite = spr_walls_destroyed;
	mask_index = spr_no_collision;
}else{
	sprite = spr_walls;
	mask_index = spr_walls_hit_box
}

if(place_meeting(x, y + 16, obj_walls)){
	draw_sprite_part(sprite, 0, sprites_v_juction[level][0], sprites_v_juction[level][1], wall_v_junction_w, wall_v_junction_h, x - wall_w/2, y - wall_h + 1);
}else{
	draw_sprite_part(sprite, 0, sprites_wall[level][0], sprites_wall[level][1], wall_w, wall_h, x - wall_w/2, y - wall_h + 1);
}

if(place_meeting(x + 16, y, obj_walls)){
	draw_sprite_part(sprite, 0, sprites_h_juction[level][0], sprites_h_juction[level][1], wall_h_junction_w, wall_h_junction_h, x + wall_w/2 - 1, y - wall_h + 3);
}