var _gui_w = display_get_gui_width();
var _gui_h = display_get_gui_height();

var _side_tab_w = (_gui_w/16)*2;
var _side_tab_h = _gui_h;
var _console_w = _gui_w - _side_tab_w;
var _console_h = _gui_h/4;

draw_rectangle_color(0,0,_side_tab_w,_side_tab_h,c_red,c_red,c_red,c_red,1);
draw_rectangle_color(_gui_w - _console_w,_gui_h - _console_h,_gui_w,_gui_h,c_blue,c_blue,c_blue,c_blue,1);

draw_line(_side_tab_w,0,_gui_w,_gui_h - _console_h);
draw_line(_gui_w,0,_side_tab_w,_gui_h - _console_h);