if(keyboard_check_released(vk_tab)){
	global.tab = !global.tab;
}

if(!global.tab){
	global.console_select = false;
}

if(keyboard_check_released(vk_f1)){
	keyboard_string = "spawn(22,7,necro)";
}
if(keyboard_check_released(vk_f2)){
	keyboard_string = "spawn(24,6,wall)";
}
if(keyboard_check_released(vk_f3)){
	keyboard_string = "spawn(24,7,monstro)";
}
if(keyboard_check_released(vk_f4)){
	keyboard_string = "spawn(26,7,wall)";
}
if(keyboard_check_released(vk_f5)){
	keyboard_string = "spawn(26,8,monstro)";
}
if(keyboard_check_released(vk_f6)){
	keyboard_string = "spawn(25,9,wall)";
}
if(keyboard_check_released(vk_f7)){
	keyboard_string = "spawn(25,10,monstro)";
}
if(keyboard_check_released(vk_f8)){
	keyboard_string = "spawn(26,11,wall)";
}
if(keyboard_check_released(vk_f9)){
	keyboard_string = "spawn(26,12,monstro)";
}