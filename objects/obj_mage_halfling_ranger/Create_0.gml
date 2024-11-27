/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

mage.kind			= 4						;
mage.spell_object	= obj_mage_halfling_ranger_spell;
mage.spell_speed	= 3						;
mage.spell_damage	= 2						;
mage.spell_range	= 160					;
mage.spell_hits		= 1						;
mage.action_frame	= 3.0					;
mage.spell_source_x	= 3						;
mage.spell_source_y	= 5						;
mage.n_action_cicles = 4					;
mage.status			= 0						;

mage.name_surname	= random_name() + " " + surname_by_type(mage.kind);
while(search_mage_by_name(mage.name_surname) == 1){
	mage.name_surname	= random_name() + " " + surname_by_type(mage.kind);	
}

buff_itens = [3, 7, 8];

buff_speak =	[["Se eu colocar isso como a ponta da minha flecha da pra fazer estrago"],
				 ["Isso é venenoso pra caramba, da pra mim que eu sei lidar com isso"],
				 ["Só de olhar eu já me corto... imagina quando isso vai na sua direção na ponta de uma flecha"],
				 ["Hora de praticar tiro ao alvo", "Caramba... uau"]];

trivial_speak = ["Grandes jornadas começam com pequenos passos... e talvez um bom lanche no meio do caminho.", "Os caminhos mais seguros são os que só os pequenos conseguem atravessar.", "Uma boa armadilha é como um bom amigo: silenciosa, confiável e sempre no lugar certo."];