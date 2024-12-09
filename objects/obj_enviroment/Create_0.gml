randomize();

global.on_attack = false;
global.target = [24.5*16, 3*16];

n = 0;
enemies_qtd = 0;
safe_range = 128;
waves = 0;
alarm[0] = 1800;

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