/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

mage.kind			= 3						;
mage.name_surname	= random_name() + " " + surname_by_type(mage.kind);
mage.spell_object	= obj_mage_pyromancer_spell	;
mage.spell_speed	= 0.5					;
mage.spell_damage	= 3						;
mage.spell_range	= 150					;
mage.spell_hits		= 1						;
mage.action_frame	= 2.0					;
mage.spell_source_x	= 4						;
mage.spell_source_y	= 10					;
mage.status			= 0						;