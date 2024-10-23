var _alvo, _range, _spell, _spell_inst, _spell_speed, _action_frame, _source_x, _source_y, _spell_damage,_status;
_range = 320;
_spell = obj_spell_teste;
_spell_inst = noone;
_spell_speed = 2;
_action_frame = 2.0; //tem que ter o ponto pra funcionar
_source_x = x;
_source_y = y;
_spell_damage = 2;
_status = 0;

if(_status != 0){
	//fazer função para isso
	//ideias:
	// slimes e glowing wisp -> diminuir image_speed
	// crimson slaad, humonguos ettin -> diminui o dano
	// fungal -> põe pra dormir
	//só pode 1 status por vez e eles não podem se sobrepor
	image_speed *= 1;
}

if(instance_exists(obj_enemy)){
	_alvo = instance_nearest(x, y, obj_enemy);
	image_xscale = (x < _alvo.x)? 1 : -1 ;
	
	if(distance_to_object(_alvo) < _range && image_index == _action_frame){
		_spell_inst = instance_create_depth(_source_x, _source_y, _alvo.depth - 1, _spell);
		_spell_inst.alvo_x = _alvo.x;
		_spell_inst.alvo_y = _alvo.y;
		_spell_inst.source_x = _source_x;
		_spell_inst.source_y = _source_y;
		_spell_inst.dano = _spell_damage;
		_spell_inst.speed = _spell_speed;
	}
}else if(alarm[0] <= 0){
	image_xscale = sign(random_range(-10,10));
	alarm[0] = random(60);
}

