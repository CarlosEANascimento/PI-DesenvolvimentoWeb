var _x = 0;
var _y = 0;

while(_x <= room_width){
	while(_y <= room_height){
		draw_circle(_x,_y,1,0);
		_y += room_height/16;
	}
	_y = 0;
	_x += room_width/16;
}