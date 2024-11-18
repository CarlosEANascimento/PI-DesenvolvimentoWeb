/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

spell.destroy_func = function(){
	sprite_index = spr_pyromancer_spell_p2;
	depth -= 100;
	image_angle = 0;
	speed = 0;
	
	var _state;
	
	if(ceil(image_index) >= 9){
		_state = 1;
	}
	
	if(_state == 1){
		instance_destroy();
	}
}