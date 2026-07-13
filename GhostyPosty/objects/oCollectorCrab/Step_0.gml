/// @description Insert description here
// You can write your code in this editor
if(!global.paused){
	if(target != noone){
		targetCollision = point_distance(x,y,target.x,target.y);
		if(targetCollision > 5){
			speed = 2;
			direction = point_direction(x,y,target.x,target.y);
		}else{
			speed =0;
			target.target = self;
			target = oCrabHole;
		}
	}
}