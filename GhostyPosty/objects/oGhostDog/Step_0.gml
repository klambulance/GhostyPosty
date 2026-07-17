/// @description Insert description here
// You can write your code in this editor
if(!global.paused){
	if(x - startX > walkLim){
		walkDir = -1;
		image_xscale = 1;
	}else if(x - startX < -walkLim){
		walkDir = 1;
		image_xscale = -1;
	}
	x = x + walkDir;
	depth = -y;	
}
