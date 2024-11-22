/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event from obj_mages
event_inherited();

mage.kind			= 0						;
mage.spell_object	= obj_mage_bard_spell	;
mage.spell_speed	= 2						;
mage.spell_damage	= 2						;
mage.spell_range	= 320					;
mage.spell_hits		= 3						;
mage.action_frame	= 2.0					;
mage.spell_source_x	= 1						;
mage.spell_source_y	= 4						;
mage.status			= 0						;

mage.name_surname	= random_name() + " " + surname_by_type(mage.kind);
while(search_mage_by_name(mage.name_surname) == 1){
	mage.name_surname	= random_name() + " " + surname_by_type(mage.kind);	
}