if(keyboard_check_released(vk_tab)){
	global.tab = !global.tab;
}

if(!global.tab){
	global.console_select = false;
}


if(keyboard_check_released(ord("A"))){
	keyboard_string = "spawn(18,10,mons)"
}
if(keyboard_check_released(ord("B"))){
	keyboard_string = "spawn(19,10,cavre)"
}
if(keyboard_check_released(ord("C"))){
	keyboard_string = "spawn(20,10,gavre)"
}
if(keyboard_check_released(ord("D"))){
	keyboard_string = "spawn(21,10,slaad)"
}
if(keyboard_check_released(ord("E"))){
	keyboard_string = "spawn(22,10,death)"
}
if(keyboard_check_released(ord("F"))){
	keyboard_string = "spawn(23,10,cogu)"
}
if(keyboard_check_released(ord("G"))){
	keyboard_string = "spawn(24,10,wisp)"
}
if(keyboard_check_released(ord("H"))){
	keyboard_string = "spawn(25,10,amongus)"
}
if(keyboard_check_released(ord("I"))){
	keyboard_string = "spawn(26,10,ochre)"
}



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


if(keyboard_check_released(ord("J"))){
	keyboard_string = "spawn(18,7,bardo)"
}
if(keyboard_check_released(ord("K"))){
	keyboard_string = "spawn(19,7,druida)"
}
if(keyboard_check_released(ord("L"))){
	keyboard_string = "spawn(20,7,fogo)"
}
if(keyboard_check_released(ord("M"))){
	keyboard_string = "spawn(21,7,necro)"
}
if(keyboard_check_released(ord("N"))){
	keyboard_string = "spawn(22,7,ranger)"
}
if(keyboard_check_released(ord("O"))){
	keyboard_string = "spawn(23,7,mago)"
}