if(array_find_element(enemies, other) == -1){
	other.enemy.vida -= spell.damage;
	enemies[n_enemies] = other;
	n_enemies++;
	spell.hits -= 1
	show_debug_message(string(id) + " hit " + string(other.id));
	show_debug_message(spell.hits);
	if(spell.hits == 0){
		image_index = 0;
	}
}