if(keyboard_check_released(vk_tab)){
	global.tab = !global.tab;
}

if(!global.tab){
	global.console_select = false;
}

if(keyboard_check_released(vk_f1)){
	keyboard_string = "spawn(22,10,bardo)";
}

if(keyboard_check_released(vk_f2)){
	keyboard_string = "spawn(22,7,wall)";
}
if(keyboard_check_released(vk_f3)){
	keyboard_string = "spawn(23,7,druida)";
}
if(keyboard_check_released(vk_f4)){
	keyboard_string = "spawn(24,7,wall)";
}
if(keyboard_check_released(vk_f5)){
	keyboard_string = "spawn(25,7,fogo)";
}
if(keyboard_check_released(vk_f6)){
	keyboard_string = "interact(";
}