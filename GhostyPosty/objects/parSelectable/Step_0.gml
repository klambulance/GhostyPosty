/// @description Insert description here
// You can write your code in this editor

if(target != noone){
	if(!collision_circle(x,y,5,target,0,1)){
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