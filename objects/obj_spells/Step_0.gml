if(first_frame){
	move_towards_point(spell.target_x, spell.target_y, spell.spell_speed);
	image_angle = round(point_direction(spell.origin_x, spell.origin_y, spell.target_x, spell.target_y));
	first_frame = false;
}

if(spell.hits == 0){
	spell.destroy_func();
}

if(x < 0 || x > room_width || y < 0 || y > room_height){
	instance_destroy();
}

if(instance_exists(obj_walls)){
	depth = obj_walls.depth - 10;
}