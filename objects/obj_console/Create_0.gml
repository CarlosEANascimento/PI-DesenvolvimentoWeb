global.tab = false;
global.console_select = false;

console_lines = [];
n_console_lines = 0;

commands = [];
n_commands = 0;
index_selected_command = 0;

actual_command = "";
args_command = [];
args_action = [];
offset = 0;

n = 0;

arr_commands = [
	"spawn"
];

function draw_cartesian_plan(){
	depth = layer_get_depth(obj_player.layer) - 1;
	
	var _room_w = room_width;
	var _room_h = room_height;
	
	var _color = make_color_rgb(3, 186, 252);
	
	var _i, _j;
	
	var _cam_y = camera_get_view_y(view_camera[0]);
	var _cam_x = camera_get_view_x(view_camera[0]);
	var _cam_w = camera_get_view_width(view_camera[0]);
	
	draw_set_alpha(0.5);
	for(_i = 0; _i <= _room_w; _i += 16){
		for(_j = 0; _j <= _room_h; _j += 16){
			
			var _has_collision = collision_rectangle(_i, _j, _i + 16, _j + 16, all, false, false) != noone;
			
			if(_has_collision){
				draw_rectangle_color(_i, _j, _i + 16, _j + 16, c_red, c_red, c_red, c_red, 0);
			}else{
				draw_rectangle_color(_i, _j, _i + 16, _j + 16, _color, _color, _color, _color, 0);
			}
		}
	}
	draw_set_alpha(1);
	
	draw_set_font(fnt_consolas);
	draw_set_halign(fa_center);
	for(_i = 16; _i <= _room_w; _i += 16){
		draw_text_transformed(_i, _cam_y, _i/16, 0.5*obj_camera.zoom, 0.5*obj_camera.zoom, 0);
	}
	draw_set_valign(fa_middle);
	draw_set_halign(fa_right);
	for(_i = 16; _i <= _room_h; _i += 16){
		draw_text_transformed(_cam_x + _cam_w, _i, _i/16, 0.5*obj_camera.zoom, 0.5*obj_camera.zoom, 0);
	}
	draw_set_valign(fa_top)
	draw_set_halign(fa_left);
}

function empty(){
	draw_set_alpha(1);
}