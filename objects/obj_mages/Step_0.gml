depth = y * (-1);

var _alvo, _spell_inst;

if(mage.status != 0){
	//fazer função para isso
	//ideias:
	// slimes e glowing wisp -> diminuir image_speed
	// crimson slaad, humonguos ettin -> diminui o dano
	// fungal -> põe pra dormir
	//só pode 1 status por vez e eles não podem se sobrepor
	image_speed *= 0.1;
}

if(instance_exists(obj_enemies)){
	_alvo = instance_nearest(mage.spell_source_x, mage.spell_source_y, obj_enemies);
	image_xscale = (x < _alvo.x)? 1 : -1 ;
	
	if(distance_to_object(_alvo) < mage.spell_range  && image_index == mage.action_frame){
		_spell_inst = instance_create_depth(x + mage.spell_source_x * sign(image_xscale), y - mage.spell_source_y, depth - 1, mage.spell_object);
		
		_spell_inst.spell.target_x = _alvo.x;
		_spell_inst.spell.target_y = _alvo.bbox_top;
		
		_spell_inst.spell.origin_x = (sign(image_xscale)*x) + mage.spell_source_x;
		_spell_inst.spell.origin_y = y - mage.spell_source_y;
		_spell_inst.spell.damage = mage.spell_damage;
		_spell_inst.spell.spell_speed = mage.spell_speed;
		_spell_inst.spell.hits = mage.spell_hits;
	}
	
}else if(alarm[0] <= 0){
	image_xscale = sign(random_range(-10,10));
	alarm[0] = random(60);
}