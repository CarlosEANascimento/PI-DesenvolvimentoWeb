cam = view_camera[0];

cam_w = 512;
cam_h = 288;

resolution_w = display_get_width();
resolution_h = display_get_height();

ratio = resolution_w/resolution_h;

view_w = resolution_w/ratio;
view_h = resolution_h/ratio;

zoom = 0.5;

window_set_size(view_w * ratio, view_h * ratio);
surface_resize(application_surface, view_w * ratio, view_h * ratio);
camera_set_view_size(view_camera[0], resolution_w/ratio*zoom, resolution_h/ratio*zoom);
display_reset(0, false);
window_center();

cam_x = clamp(obj_player.x - (resolution_w/ratio*zoom)/2, 0, room_width - resolution_w/ratio*zoom);
cam_y = clamp(obj_player.bbox_top - (resolution_h/ratio*zoom)/2, 0, room_height - resolution_h/ratio*zoom);