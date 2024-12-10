depth = 0

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
console_offset = 0;
side_tab_offset = 0;

n = 0;

arr_commands = [
	//"spawn",
	"upgrade",
	"interact_ls",
	"interact",
	"build",
	"restore",
	"move",
	"inventory_ls"
];

side_tab_tips = [
	["Function: spawn(xpos,ypos,object)","Function: upgrade(x1,y1,x2,y2)","Function: interact_ls(name)","Function: interact(name, interação)","Function: build(x1,y1,x2,y2)","Function: restore(x1,y1,x2,y2)","move(fromx,fromy,tox,toy)","Command: inventory_ls"],
	//["Função spawn", "spawn(xpos,ypos,object)", "return: id da instância"],
	["Função upgrade","upgrade(x1,y1,x2,y2)","return: situação"],
	["Função interact_ls","interact_ls(name)","return: interações possiveis"],
	["Função interact","interact(name, interação)","return: resultado"],
	["Função build","build(x1,y1,x2,y2)","retunr: n construções"],
	["Função restore","restore(x1,y1,x2,y2)","return: n restaurações"],
	["Função move","move(fromx,fromy,tox,toy)","return: situação"],
	["Comando inventory_ls", "inventory_ls", "return: inventário"]
];

function side_tab_tips_index_correspondant(_command){
	switch _command{
		//case "spawn": return 1;
		case "upgrade": return 2;
		case "interact_ls": return 3;
		case "interact": return 4;
		case "build": return 5;
		case "restore": return 6;
		case "move": return 7;
		case "inventory_ls": return 8;
		default: return 0;
	}
}

function draw_cartesian_plan(){
	depth = layer_get_depth(obj_player.layer) + 1;
	
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
	
	draw_set_font(fnt_monogram);
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

function draw_mages_name(_name){
	var _list = ds_list_create();
	var _num = collision_ellipse_list(obj_player.x - 80, obj_player.bbox_top - 80, obj_player.x + 80, obj_player.bbox_top + 80, obj_mages, 0, 1, _list, 0);
	var _i,_x,_y;
	
	draw_set_font(fnt_consolas);
	draw_set_halign(fa_center);
	var _error;
	
	
	if(_num > 0){
		for(_i = 0; _i < _num; _i++){
			if(_list[| _i].mage.name_surname == _name){
				draw_rectangle_color_width(_list[| _i].bbox_left, _list[| _i].bbox_bottom - 16, _list[| _i].bbox_right, _list[| _i].bbox_bottom, c_white, 1);
				draw_set_color(c_green);
			}
			draw_text_transformed(_list[| _i].x, _list[| _i].y, _list[| _i].mage.name_surname,0.25,0.25,0);
			draw_set_color(c_white);
		}
	}
	
	
	draw_set_halign(fa_left);
	ds_list_destroy(_list);
}

function empty(){
	draw_set_alpha(1);
}