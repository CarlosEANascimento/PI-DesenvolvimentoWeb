if(first_frame){
	move_towards_point(spell.target_x, spell.target_y, spell.spell_speed);
	image_angle = round(point_direction(spell.origin_x, spell.origin_y, spell.target_x, spell.target_y));
	first_frame = false;
}