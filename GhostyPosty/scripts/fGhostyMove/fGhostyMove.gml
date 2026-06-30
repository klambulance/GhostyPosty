// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fGhostyMove(){
	if(point_distance(x,y,mouse_x,mouse_y) < 10){
		speed = 0;	
	}else{
		var xDiff = x - mouse_x;
		var yDiff = y - mouse_y;
		if(xDiff > 10 or xDiff < -10){
			if(x>mouse_x){
				xInput = -1;
				image_xscale = -1;
			}else{
				xInput = 1;
				image_xscale = 1;
			}
			move_and_collide(xInput*ghostySpeed, 0, parSolid);
		}
		if(yDiff > 10 or yDiff < -10){
			if(y>mouse_y){
				yInput = -1;
			}else{
				yInput = 1;
			}
			move_and_collide(0, yInput * ghostySpeed, parSolid);
		}
	}
}