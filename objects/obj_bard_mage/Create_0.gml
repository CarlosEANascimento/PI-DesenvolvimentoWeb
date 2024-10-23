event_inherited();


mage.kind = 0;
mage.name_surname = random_name() + " " + surname_by_type(mage.type);
mage.spell_object = obj_bard_mage_spell;
mage.spell_speed = 2;
mage.spell_damage = 2;
mage.spell_range = 320;
mage.action_frame = 2.0;
mage.spell_source_x = 1;
mage.spell_source_y = 4;
mage.status = 0;