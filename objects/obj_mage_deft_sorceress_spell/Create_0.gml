/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

spell.destroy_func = function(){
	if(sprite_index == spr_deft_sorceress_spell_p1){
		image_index = 0;
	}
	
	sprite_index = spr_deft_sorceress_spell_p2;
	depth -= 100;
	speed = 1;
	
	var _state;
	
	if(ceil(image_index) >= 5){
		_state = 1;
	}
	
	if(_state == 1){
		image_alpha -= 0.1;
		image_index = 3;
	}
	
	if(image_alpha <= 0){
		instance_destroy();
	}
}