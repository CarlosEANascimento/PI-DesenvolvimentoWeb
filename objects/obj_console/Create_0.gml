global.tab = false;
global.console_select = false;

console_lines = [];
n_console_lines = 0;

commands = [];
n_commands = 0;
index_selected_command = 0;

index_command = 0;
actual_command = "";
args_command = [];
args_action = [];
offset = 0;

response = "";

n = 0;

arr_commands = [
	"spanw"
];

function draw_cartesian_plan(){
	depth = layer_get_depth(obj_player.layer) - 1;
	
	var _room_w = room_width;
	var _room_h = room_height;
	
	var _color = make_color_rgb(3, 186, 252);
	
	var _i = 0;
	
	draw_set_alpha(0.5);
	draw_rectangle_color(0, 0, _room_w, _room_h, _color, _color, _color, _color, 0);
	
	for(_i = 0; _i <= _room_w; _i += 16){
		draw_line(_i, 0, _i, _room_h);
	}
	
	for(_i = 0; _i <= _room_h; _i += 16){
		draw_line(0, _i, _room_w, _i);
	}
	draw_set_alpha(1);
}

draw_state = draw_cartesian_plan();