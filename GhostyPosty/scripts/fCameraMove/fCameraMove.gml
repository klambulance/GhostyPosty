// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fCameraMove(_xDiff, _yDiff){

			var _hor = 0;
			var _ver = 0;
			if(_xDiff < 0){
				_hor = 1;
			}else{
				_hor = -1;
			}
			if(_yDiff < 0){
				_ver = 1;
			}else{
				_ver = -1;
			}
			
			var _viewX = camera_get_view_x(view_camera[1]);

			var _viewY = camera_get_view_y(view_camera[1]);

			var _viewW = camera_get_view_width(view_camera[1]);

			var _viewH = camera_get_view_height(view_camera[1]);
		
			var _gotoX = x + (_hor * 30) - (_viewW * 0.5);

			var _gotoY = y + (_ver * 30) - (_viewH * 0.5);
			var _newX = lerp(_viewX, _gotoX, 0.1);

			var _newY = lerp(_viewY, _gotoY, 0.1);
			
			//camera_set_view_pos(view_camera[1], _newX, _newY);
			
			var _factor = 0.2;

			var _mouseW = mouse_wheel_down() - mouse_wheel_up();

			zoomF = clamp(zoomF + (_mouseW * _factor), _factor, 2);
			var _lerpH = lerp(_viewH, zoomF * 768, _factor);

			var _newH = clamp(_lerpH, 0, room_height);
			var _newW = _newH * (1366 / 768);
			
			camera_set_view_size(view_camera[1], _newW, _newH);
			var _offsetX = _newX - (_newW - _viewW) * 0.5;

			var _offsetY = _newY - (_newH - _viewH) * 0.5;

			_newX = clamp(_offsetX, 0, room_width - _newW);

			_newY = clamp(_offsetY, 0, room_height - _newH);

			camera_set_view_pos(view_camera[1], _newX, _newY);
}