if(first_frame){
	move_towards_point(alvo_x, alvo_y, speed);
	image_angle = round(point_direction(source_x, source_y, alvo_x, alvo_y));
	first_frame = false;
}