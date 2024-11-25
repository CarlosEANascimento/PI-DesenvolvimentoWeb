/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

mage.kind			= 5						;
mage.spell_object	= obj_mage_deft_sorceress_spell	;
mage.spell_speed	= 1.5					;
mage.spell_damage	= 1						;
mage.spell_range	= 200					;
mage.spell_hits		= 1						;
mage.action_frame	= 3.0					;
mage.spell_source_x	= 5						;
mage.spell_source_y	= 11					;
mage.status			= 0						;

mage.name_surname	= random_name() + " " + surname_by_type(mage.kind);
while(search_mage_by_name(mage.name_surname) == 1){
	mage.name_surname	= random_name() + " " + surname_by_type(mage.kind);	
}