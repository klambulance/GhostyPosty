/// @description Insert description here
// You can write your code in this editor

switch (state)
{
case ghostyState.idle:
	
	fGhostyMove();
	
	
	
	if(distance_to_object(pebbleArr[0])>50){
		var pebbleArrLim = array_length(pebbleArr);
		for(var i=0; i<pebbleArrLim;i++;){
			var j = array_length(pebbleArr) - i - 1;
			if(j == pebbleLim){
				instance_destroy(pebbleArr[j]);
			}else{
				pebbleArr[j+1] = pebbleArr[j];
			}
			
		}
		pebbleArr[0] = instance_create_layer(x,y,"Instances", oMovementPebble);
	}
	
	
	if(invCnt > 0){
		for(var i=0; i<invCnt;i++;){
			inventory[i].target = pebbleArr[i];
		}
	}
	
	/*if(point_distance(x,y,mouse_x,mouse_y) < 10){
		speed = 0;	
	}else{
		speed = ghostySpeed;	
	}*/
    break;

case ghostyState.changing:
	//sprite_index = outfit;
	state = ghostyState.idle;
	break;
}



depth = -y;