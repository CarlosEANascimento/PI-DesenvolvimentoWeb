var _col = collision_ellipse(
	(global.target[0] + sin(n) * safe_range) - 8,
	(global.target[1] + abs(cos(n)) * safe_range) - 8, 
	(global.target[0] + sin(n) * safe_range) + 8, 
	(global.target[1] + abs(cos(n)) * safe_range) + 8, 
	[obj_mages, obj_walls], 
	0, 
	1
);

if(_col != noone){
	safe_range++;
}else if(global.on_attack){
	if(enemies_qtd < ceil(waves/3)){
		if(irandom(5) == 1){
			instance_create_layer(
				(global.target[0] + sin(n) * safe_range), 
				(global.target[1] + abs(cos(n)) * safe_range), 
				"Instances_1", 
				choose(
					obj_grizzled_treant,
					obj_grizzled_treant,
					obj_grizzled_treant,
					obj_grizzled_treant,
					obj_grizzled_treant,
					obj_grizzled_treant,
					obj_blinded_grimlock,
					obj_blinded_grimlock,
					obj_blinded_grimlock,
					obj_corrupted_treant,
					obj_corrupted_treant,
					obj_crimson_slaad,
					obj_death_slime,
					obj_fungal_myconid,
					obj_glowing_wisp,
					obj_humongous_ettin,
					obj_ochre_jelly
				)
			);
			enemies_qtd++;
		}
	}else{
		waves++;
		alarm[0] = 2400;
		global.on_attack = false;
		enemies_qtd = 0;
		
		mage = instance_create_layer(
		   	global.target[0], 
		   	room_height/2,
		   	"Instances_1", 
		   	choose(
		   		obj_mage_bard,
				obj_mage_deft_sorceress,
				obj_mage_druid,
				obj_mage_halfling_ranger,
				obj_mage_necromancer,
				obj_mage_pyromancer
			)
		);

		mage.position = [global.target[0], global.target[1] + safe_range];
	}
}
n+=0.1;

layer_depth(layer_get_id("Tree1"),(room_height * -1)-1);
layer_depth(layer_get_id("Tree2"),(room_height * -1)-2);
layer_depth(layer_get_id("Tree3"),(room_height * -1)-3);
layer_depth(layer_get_id("Tree4"),(room_height * -1)-4);
layer_depth(layer_get_id("Tree5"),(room_height * -1)-5);
layer_depth(layer_get_id("Tree6"),(room_height * -1)-6);
layer_depth(layer_get_id("Tree7"),(room_height * -1)-7);