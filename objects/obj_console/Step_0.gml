if(keyboard_check_released(vk_tab)){
	global.tab = !global.tab;
}

if(!global.tab){
	global.console_select = false;
}