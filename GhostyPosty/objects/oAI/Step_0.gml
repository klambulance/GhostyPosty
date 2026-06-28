/// @description Insert description here
// You can write your code in this editor

if(point_distance(x,y,oPsyche.x,oPsyche.y) > 351){
	if(x < oPsyche.x){
		x = x + movementSpeed;
	}else{
		x = x - movementSpeed;	
	}
	if(y < oPsyche.y){
		y = y + movementSpeed;
	}else{
		y = y - movementSpeed;
	}
	n = point_direction(x,y,oPsyche.x,oPsyche.y);
}else{
	
	x = oPsyche.x - lengthdir_x(350, n);
	y = oPsyche.y - lengthdir_y(350, n);
	n -= 1/movementSpeed;	
	
}