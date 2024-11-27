/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

mage.kind			= 5						;
mage.spell_object	= obj_mage_deft_sorceress_spell	;
mage.spell_speed	= 1.5					;
mage.spell_damage	= 1						;
mage.spell_range	= 64					;
mage.spell_hits		= 1						;
mage.action_frame	= 3.0					;
mage.spell_source_x	= 5						;
mage.spell_source_y	= 11					;
mage.n_action_cicles = 3					;
mage.status			= 0						;

mage.name_surname	= random_name() + " " + surname_by_type(mage.kind);
while(search_mage_by_name(mage.name_surname) == 1){
	mage.name_surname	= random_name() + " " + surname_by_type(mage.kind);	
}

buff_itens = [8, 9];

buff_speak =	[["Um ótimo ingrediente para poções", "Dá pra fazer um cajado magnifico com isso", "Ornamentos com isso são lindos"],
				 ["Um ótimo ingrediente para poções", "Dá pra fazer um cajado magnifico com isso", "Ornamentos com isso são lindos"],
				 ["Muito... obrigado?", "Caramba... que lindo", "O que é isso?"]];
				 
trivial_speak = ["A magia está em tudo ao nosso redor... mas poucos têm olhos para vê-la.", "Cuidado com o que deseja. Um feitiço mal-entendido pode ser mais perigoso que o silêncio.", "Minha força vem da sabedoria dos antigos, mas meu caminho é moldado pelo presente."];