var _target_x = global.target[0];
var _target_y = global.target[1];

var _dx = (x - _target_x) * -1;
var _dy = (y - _target_y) * -1;

move_and_collide(_dx, _dy, obj_block, 4, 24, 24, enemy.mov_speed * 0.75, enemy.mov_speed * 0.75);

if(enemy.vida <= 0){
	instance_destroy();
}

var _wall_col = collision_rectangle(bbox_left - 1, bbox_top - 1, bbox_right + 1, bbox_bottom + 1, obj_walls, 0, 1);
if(alarm[0] <= 0 && _wall_col != noone){
	_wall_col.life -= enemy.damage;
	alarm[0] = enemy.cd_dano;
	show_debug_message("dano ", + string(_wall_col.life));
}

depth = y * (-1);