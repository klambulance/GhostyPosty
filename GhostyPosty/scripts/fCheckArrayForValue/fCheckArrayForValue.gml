
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fCheckArrayForValue(_array, _value){
	var _index = 99;
	for(var i=0; i < array_length(_array) i++;){
		if(_array[i] == _value){
			_index = i;
			i = array_length(_array);
		}
	}
	return _index;
}

function fCheckArrayForObject(_array, _value){
	var _index = 99;
	
	for(var i=0; i < array_length(_array) i++;){
		var _oValue = asset_get_index(object_get_name(_array[i].object_index));
		if(_oValue == _value){
			_index = i;
			i = array_length(_array);
		}
	}
	return _index;
}