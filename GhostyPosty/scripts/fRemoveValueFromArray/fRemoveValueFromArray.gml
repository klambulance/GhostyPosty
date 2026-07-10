
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fRemoveValueFromArray(_array, _index){
	_array[_index] = noone;
	oGhosty.invCnt--;
	for(var i=_index; i<array_length(_array)-1;i++;){
		_array[i] = _array[i+1];
	}
	return _array;
}