if(array_find_element(enemies, other) == -1){
	spell.on_hit_func();
	other.enemy.vida -= spell.damage;
	enemies[n_enemies] = other;
	n_enemies++;
	spell.hits--;
	if(spell.hits == 0){
		image_index = 0;
	}
}