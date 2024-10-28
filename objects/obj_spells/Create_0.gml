destroy_fun = function(){
	instance_destroy();
}

spell = {
	target_x: 0,
	target_y: 0,
	origin_x: 0,
	origin_y: 0,
	damage: 0,
	spell_speed: 0,
	hits: 0,
	destroy_func: destroy_fun
}

first_frame = true;
enemies = [];
n_enemies = 0;