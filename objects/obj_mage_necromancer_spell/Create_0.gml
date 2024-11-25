/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

image_xscale = 0.7;
image_yscale = 0.7;

spell.on_hit_func = function(){
	var _list = ds_list_create();
	var _num = collision_ellipse_list(x - 86, y - 86, x + 86, y + 86, obj_enemies, 0, 1, _list, 1);
	
	var _inst = _list[| 0];
	var _p_inst = _list[| 1];
	
	speed = speed * 0.5;
	direction = point_direction(_inst.x, _inst.y, _p_inst.x, _p_inst.y);
	image_angle = round(point_direction(_inst.x, _inst.y, _p_inst.x, _p_inst.y));
	
	ds_list_destroy(_list);
}	