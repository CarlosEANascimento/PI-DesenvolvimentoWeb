//var _alvo, _range, _spell, _spell_inst, _spell_speed, _action_frame, _source_x, _source_y, _spell_damage,_status;
var _alvo, _spell_inst;

if(mage.status != 0){
	//fazer função para isso
	//ideias:
	// slimes e glowing wisp -> diminuir image_speed
	// crimson slaad, humonguos ettin -> diminui o dano
	// fungal -> põe pra dormir
	//só pode 1 status por vez e eles não podem se sobrepor
	image_speed *= 1;
}

if(instance_exists(obj_enemy)){
	try{
	
	_alvo = instance_nearest(mage.spell_source_x, mage.spell_source_y, obj_enemy);
	image_xscale = (x < _alvo.x)? 1 : -1 ;
	
	if(distance_to_object(_alvo) < mage.spell_range  && image_index == mage.action_frame){
		_spell_inst = instance_create_depth(x + mage.spell_source_x * sign(image_xscale), y + mage.spell_source_y, depth - 1, mage.spell_object);
		
		_spell_inst.spell.target_x = _alvo.x;
		_spell_inst.spell.target_y = lerp(_alvo.y, alvo.bbox_top, 0.5);
		
		_spell_inst.spell.origin_x = x + mage.spell_source_x;
		_spell_inst.spell.origin_y = y + mage.spell_source_y;
		_spell_inst.spell.damage = mage.spell_damage;
		_spell_inst.spell.spell_speed = mage.spell_speed;
	}else if(alarm[0] <= 0){
		image_xscale = sign(random_range(-10,10));
		alarm[0] = random(60);
	}
	
	}catch(_alvo){
		show_debug_message(_alvo.message);
		show_debug_message(_alvo.longMessage);
		show_debug_message(_alvo.script);
		show_debug_message(_alvo.stacktrace);
		
	}
}