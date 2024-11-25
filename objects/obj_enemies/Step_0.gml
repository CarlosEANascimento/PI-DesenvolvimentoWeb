var _target_x = (x < lerp(24*16,25*16,0.5))? 24*16 : 25*16 ;
var _target_y = 3*16;

var _dx = (x - _target_x) * -1;
var _dy = (y - _target_y) * -1;

move_and_collide(_dx, _dy, obj_block, enemy.mov_speed, 128, 0, 1, 1);

if(enemy.vida <= 0){
	instance_destroy();
}

depth = y * (-1);