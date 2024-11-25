if(first_frame){
	speed = spell.spell_speed;
	direction = point_direction(spell.origin_x, spell.origin_y, spell.target_x, spell.target_y);
	image_angle = round(point_direction(spell.origin_x, spell.origin_y, spell.target_x, spell.target_y));
	first_frame = false;
}

if(spell.hits == 0){
	spell.destroy_func();
}

if(x < 0 || x > room_width || y < 0 || y > room_height){
	instance_destroy();
}

var _col = collision_rectangle(bbox_left, bbox_top - 8, bbox_right, bbox_bottom + 4, all, 0, 1);

if(_col != noone){
	depth = _col.depth - 10;
}