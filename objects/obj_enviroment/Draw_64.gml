draw_set_halign(fa_right);
draw_set_font(fnt_monogram);
draw_text_ext_transformed(display_get_gui_width(), 0, round(alarm[0]/60), 0, string_width( round(alarm[0]/60))*2, 2, 2, 0);
draw_set_halign(fa_left);