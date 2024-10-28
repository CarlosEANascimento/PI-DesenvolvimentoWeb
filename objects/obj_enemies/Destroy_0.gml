var _material;

if(random(100) <= enemy.drop_rate){
	_material = instance_create_depth(x, lerp(bbox_bottom,bbox_top,0.5),depth + 100, obj_materials);
	_material.material_type = enemy.drop_material_type;
}