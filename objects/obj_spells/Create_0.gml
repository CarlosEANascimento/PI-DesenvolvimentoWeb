depth = -100;

destroy_fun = function(){
	instance_destroy();
}

on_hit_fun = function(){
	speed *= 1;
}

spell = {
	target_x: 0,
	target_y: 0,
	origin_x: 0,
	origin_y: 0,
	damage: 0,
	spell_speed: 0,
	hits: 0,
	destroy_func: destroy_fun,
	on_hit_func: on_hit_fun
}

first_frame = true;
enemies = [];
n_enemies = 0; 

alarm[0] = 600;