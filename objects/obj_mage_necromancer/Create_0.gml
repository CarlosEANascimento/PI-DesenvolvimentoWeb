/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

mage.kind			= 2								;
mage.spell_object	= obj_mage_necromancer_spell	;
mage.spell_speed	= 1.5							;
mage.spell_damage	= 2								;
mage.spell_range	= 100							;
mage.spell_hits		= 2								;
mage.action_frame	= 2.0							;
mage.spell_source_x	= 4								;
mage.spell_source_y	= 10							;
mage.status			= 0								;

mage.name_surname	= random_name() + " " + surname_by_type(mage.kind);
while(search_mage_by_name(mage.name_surname) == 1){
	mage.name_surname	= random_name() + " " + surname_by_type(mage.kind);	
}

buff_itens = [1, 3, 4];

buff_speak =	[["Se eu reforçar os morto-vivos com isso eles ficam invenciveis"],
				 ["Um morcego... com dentes maiores que um dedo... absolute cinema"],
				 ["Hm, isso vai contribuir com um planinho meu... por enquanto é segredo"],
				 ["Ah para", "Legal, vou enterrar ali no cemitério"]]
				 
trivial_speak = ["Ah, adoro quando as coisas começam a apodrecer... tão poético.", "A vida é superestimada. A morte, por outro lado, é tão consistente.", "A diferença entre um esqueleto e um bom amigo? O primeiro sempre volta quando eu chamo."];