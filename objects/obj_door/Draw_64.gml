if(life <= 0){
	draw_set_alpha(0.5);
	draw_rectangle_color(0,0,display_get_gui_width(),display_get_gui_height(),c_black,c_black,c_black,c_black,0);
	draw_set_alpha(1);
	draw_set_font(fnt_monogram);
	draw_set_valign(fa_bottom);
	draw_set_halign(fa_center);
	draw_text_ext_transformed(display_get_gui_width()/2, (display_get_gui_height()/2) - 40, "Fim de jogo",0,display_get_gui_height(), 2, 2, 0);
	draw_set_valign(fa_top);
	draw_text_ext_transformed(display_get_gui_width()/2, (display_get_gui_height()/2) + 10, "Ondas sobrevividas: " + string(obj_enviroment.waves),0,display_get_gui_height(), 1.5, 1.5, 0);
	draw_text_ext_transformed(display_get_gui_width()/2, (display_get_gui_height()/2) + 10 + string_height("A") * 1.5 + 5, "Pressione R para tentar novamente",0,display_get_gui_height(), 1.5, 1.5, 0);
	
	if(keyboard_check_released(ord("R"))){
		game_restart();
	}
}