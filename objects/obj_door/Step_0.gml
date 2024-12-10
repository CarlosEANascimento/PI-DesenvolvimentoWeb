var _col = collision_rectangle(
	bbox_left,
	bbox_bottom - 1,
	bbox_right,
	bbox_bottom,
	obj_enemies,
	0,
	1
);

if(_col != noone){
	life -= 0.025;
}else if(life <= 100){
	life += 0.05;
}