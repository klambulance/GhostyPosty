/// @description Insert description here
// You can write your code in this editor

if(target != noone){
	targetCollision = point_distance(x,y,target.x,target.y);
	show_debug_message(targetCollision);
	if(targetCollision > 5){
		speed = 2;
		direction = point_direction(x,y,target.x,target.y);
	}else{
		speed = 0;	
	}
	/*if(x < target.x){
		x++;
	}else if(x > target.x){
		x--;
	}
	if(y < target.y){
		y++;
	}else if(y > target.y){
		y--;
	}*/
}else{
	speed=0;	
}

depth = -y;