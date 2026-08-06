// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fGhostyMove(){
	if(!global.paused){
		var xDiff = x - mouse_x;
		var yDiff = y - mouse_y;
		fCameraMove(xDiff,yDiff);
		if(point_distance(x,y,mouse_x,mouse_y) < ghostToMouse){
			speed = 0;	
		}else{
			
			if(xDiff > ghostToMouse or xDiff < -ghostToMouse){
				if(x>mouse_x){
					xInput = -1;
					image_xscale = -1;
				}else{
					xInput = 1;
					image_xscale = 1;
				}
				move_and_collide(xInput*ghostySpeed, 0, parSolid);
			}
			if(yDiff > ghostToMouse or yDiff < -ghostToMouse){
				if(y>mouse_y){
					yInput = -1;
				}else{
					yInput = 1;
				}
				move_and_collide(0, yInput * ghostySpeed, parSolid);
			}
		}
		
	}
}