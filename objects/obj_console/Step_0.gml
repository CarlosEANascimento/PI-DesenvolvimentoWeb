if(keyboard_check_released(vk_tab)){
	global.tab = !global.tab;
}

if(!global.tab){
	global.console_select = false;
}


	if(keyboard_check_released(vk_numpad1)){
		keyboard_string = "spawn(18,15,mons)"
	}
	if(keyboard_check_released(vk_numpad2)){
		keyboard_string = "spawn(19,15,cavre)"
	}
	if(keyboard_check_released(vk_numpad3)){
		keyboard_string = "spawn(20,15,gavre)"
	}
	if(keyboard_check_released(vk_numpad4)){
		keyboard_string = "spawn(21,15,slaad)"
	}
	if(keyboard_check_released(vk_numpad5)){
		keyboard_string = "spawn(22,15,death)"
	}
	if(keyboard_check_released(vk_numpad6)){
		keyboard_string = "spawn(23,15,cogu)"
	}
	if(keyboard_check_released(vk_numpad7)){
		keyboard_string = "spawn(24,15,wisp)"
	}
	if(keyboard_check_released(vk_numpad8)){
		keyboard_string = "spawn(25,15,amongus)"
	}
	if(keyboard_check_released(vk_numpad9)){
		keyboard_string = "spawn(26,15,ochre)"
	}


//if(keyboard_check_pressed(vk_escape)){
	if(keyboard_check_released(vk_f1)){
		keyboard_string = "spawn(18,9,wall)"
	}
	if(keyboard_check_released(vk_f2)){
		keyboard_string = "spawn(19,9,wall)"
	}
	if(keyboard_check_released(vk_f3)){
		keyboard_string = "spawn(20,9,wall)"
	}
	if(keyboard_check_released(vk_f4)){
		keyboard_string = "spawn(21,9,wall)"
	}
	if(keyboard_check_released(vk_f5)){
		keyboard_string = "spawn(22,9,wall)"
	}
	if(keyboard_check_released(vk_f6)){
		keyboard_string = "spawn(23,9,wall)"
	}
	if(keyboard_check_released(vk_f7)){
		keyboard_string = "spawn(24,9,wall)"
	}
	if(keyboard_check_released(vk_f8)){
		keyboard_string = "spawn(25,9,wall)"
	}								
	if(keyboard_check_released(vk_f9)){
		keyboard_string = "spawn(26,9,wall)"
	}
//}