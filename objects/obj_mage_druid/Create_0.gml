/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

mage.kind			= 1						;
mage.spell_object	= obj_mage_druid_spell	;
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

buff_itens = [2, 6, 9];

buff_speak =	[["Quando purificado, é possível fazer maravilhas com isso"],
				 ["Se purificar é um ótimo ingrediente para poções e incensos"],
				 ["Ah, como você sabia que eu queria um desse?"],
				 ["Caramba... a terra vai amar", "Pelo menos não faz mal as plantas..."]];
				 
trivial_speak = ["A floresta fala, se souber ouvir. Cada folha sussurra um segredo antigo.", "A força de uma árvore não está apenas em seus galhos, mas nas raízes que ninguém vê.", "O equilíbrio é frágil como o orvalho ao amanhecer. Quebrá-lo tem um preço."]