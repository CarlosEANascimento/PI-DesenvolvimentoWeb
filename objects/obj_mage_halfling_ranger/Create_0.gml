/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

mage.kind			= 4						;
mage.spell_object	= obj_mage_halfling_ranger_spell;
mage.spell_speed	= 3						;
mage.spell_damage	= 2						;
mage.spell_range	= 600					;
mage.spell_hits		= 1						;
mage.action_frame	= 3.0					;
mage.spell_source_x	= 3						;
mage.spell_source_y	= 5						;
mage.status			= 0						;

mage.name_surname	= random_name() + " " + surname_by_type(mage.kind);
while(search_mage_by_name(mage.name_surname) == 1){
	mage.name_surname	= random_name() + " " + surname_by_type(mage.kind);	
}