// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fFloat(_float, _dir, _floatMax, _floatAmount){
	y = y +_dir * _floatAmount;
	var _newFloat = _float + _dir;
	var _newDir = _dir;
	if(abs(_newFloat) >= _floatMax){
		_newDir = -_dir;
	}else if(abs(_newFloat) <= 0){
		_newDir = -_dir;
	}
	
	var _data = 0;
	_data[0] = _newFloat;
	_data[1] = _newDir;
	return _data;
}