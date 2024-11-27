/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

mage.kind			= 3						;
mage.spell_object	= obj_mage_pyromancer_spell	;
mage.spell_speed	= 0.5					;
mage.spell_damage	= 3						;
mage.spell_range	= 150					;
mage.spell_hits		= 1						;
mage.action_frame	= 2.0					;
mage.spell_source_x	= 4						;
mage.spell_source_y	= 10					;
mage.status			= 0						;

mage.name_surname	= random_name() + " " + surname_by_type(mage.kind);
while(search_mage_by_name(mage.name_surname) == 1){
	mage.name_surname	= random_name() + " " + surname_by_type(mage.kind);	
}

buff_itens = [2, 5, 7, 9]

buff_speak =	[["Isso aqui queima que é uma beleza"],
				 ["Meu ingrediente favorito pra coquetel molotov"],
				 ["Uuuhhh, é disso que eu to falando"],
				 ["É, legalzinho, o que vale é a intenção"],
				 ["Hora de libertar minha natureza piromaniaca"]];
				 
trivial_speak = ["Ah, fogo... a solução universal pra tudo.", "Quanto mais inflamável, mais divertido. Fato científico.", "Cuidado pra não chegar muito perto... ou chega, tanto faz."]