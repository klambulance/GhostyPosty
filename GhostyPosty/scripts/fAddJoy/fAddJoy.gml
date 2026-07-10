// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fAddJoy(_joy, _joyMax, _joyAdd){
	_joy = _joy + _joyAdd;
	if(_joy > _joyMax){
		_joy = _joyMax;	
	}
	
	return _joy;
}