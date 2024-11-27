/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event from obj_mages
event_inherited();

mage.kind			= 0						;
mage.spell_object	= obj_mage_bard_spell	;
mage.spell_speed	= 2						;
mage.spell_damage	= 2						;
mage.spell_range	= 80					;
mage.spell_hits		= 3						;
mage.action_frame	= 2.0					;
mage.spell_source_x	= 1						;
mage.spell_source_y	= 4						;
mage.n_action_cicles = 2					;
mage.status			= 0						;

mage.name_surname	= random_name() + " " + surname_by_type(mage.kind);
while(search_mage_by_name(mage.name_surname) == 1){
	mage.name_surname	= random_name() + " " + surname_by_type(mage.kind);	
}

buff_itens = [0, 6, 9];

buff_speak =	[["Dê a moeda pro seu bruxo", "Sempre apoiando seu artista independente", "Aí sim chefia"],
				 ["Não digo pra que vou usar isso...", "O que é isso?", "Meu primo ama isso... ele por acaso é bardo também"],
				 ["A madeira disso da um ótimo instrumento"],
				 ["obrigado...?","Entre isso e nada eu quero dois nada","Vlw chefia, bom saber o que eu sou pra voce"]];
				 
trivial_speak = ["E aí chefia, qual a boa de hoje?", "Fico feliz com pouco, 1 vinho é tudo que eu preciso", "Saudades dos meus tempos de andança... vinho, mulher e música"];