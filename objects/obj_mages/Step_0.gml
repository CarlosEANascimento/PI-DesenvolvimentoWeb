if(global.on_attack){
	var _target, _spell;
	
	if(distance_to_object(obj_enemy) < mage.range){
		_target = instance_nearest(x, y, obj_enemy);
		_spell = instance_create_depth(mage.spell_source_x, mage.spell_source_y, _target.depth - 1, mage.spell);
		
		//if(floor(image_index) == mage.action_frame){
		//	_spell = instance_create_depth(mage.spell_source_x, mage.spell_source_y, _target.depth - 1, mage.spell);
		//	_spell.spell.type = mage.type;
		//	_spell.spell.damage = mage.damage;
		//	_spell.spell.spell_speed = mage.spell_speed;
		//	_spell.spell.target = _target;
		//}
	}
}