if(keyboard_check_released(vk_tab)){
	global.tab = !global.tab;
	keyboard_string = "";
}

if(!global.tab){
	global.console_select = false;
}