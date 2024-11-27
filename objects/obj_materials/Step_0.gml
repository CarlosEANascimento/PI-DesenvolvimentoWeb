if(!ff){
	switch(material_type){
		case 0: sprite_index = spr_material_coin;			break;		//todos os monstros
		case 1: sprite_index = spr_material_bone;			break;		//obj_blinded_grimlock
		case 2: sprite_index = spr_material_curropted_wood; break;		//obj_corrupted_treant
		case 3: sprite_index = spr_material_fang;			break;		//obj_amongus_ettin
		case 4: sprite_index = spr_material_flesh;			break;		//obj_crimson_slaad
		case 5: sprite_index = spr_material_jelly;			break;		//obj_death_slime
		case 6: sprite_index = spr_material_mushroom;		break;		//obj_fungal_myconid
		case 7: sprite_index = spr_material_ochre_jelly;	break;		//obj_ochre_jelly
		case 8: sprite_index = spr_material_shard;			break;		//obj_glowing_wisp
		case 9: sprite_index = spr_material_wood;			break;		//obj_grizzled_treant
	}
	
	ff = true;
}

if(abs(vspeed) > 0 && abs(hspeed) > 0){
	image_angle -= 0.1;
}

if(abs(vspeed) > 0){
	vspeed -= 0.01 * sign(vspeed);
	
	if(abs(vspeed) < 0.01){
		vspeed = 0;
	}
}else{
	vspeed = 0;
}

if(abs(hspeed) > 0){
	hspeed -= 0.01 * sign(hspeed);
	
	if(abs(hspeed) < 0.01){
		hspeed = 0;
	}
}else{
	hspeed = 0;
}