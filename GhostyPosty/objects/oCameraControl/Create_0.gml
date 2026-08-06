/// @description Insert description here
// You can write your code in this editor

view_enabled = true;
view_visible[1] = true;
view_xport[1] = 0;

view_yport[1] = 0;

view_wport[1] = 1366;

view_hport[1] = 768;

view_camera[1] = camera_create_view(0, 0, view_wport[1], view_hport[1], 0, noone, -1, -1, -1, -1);

var _dwidth = display_get_width();

var _dheight = display_get_height();

var _xpos = (_dwidth / 2) - view_wport[1]/2;

var _ypos = (_dheight / 2) - view_hport[1]/2;

window_set_rectangle(0, 0, view_wport[1], view_hport[1]);
surface_resize(application_surface, 1366, 768);


camera_set_view_pos(view_camera[1], oGhosty.x - _xpos, oGhosty.y-_ypos);