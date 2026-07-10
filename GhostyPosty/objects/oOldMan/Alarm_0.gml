/// @description Visitor check
if(!global.paused){
	if(collision_circle(x,y,100,oGhosty,0,1) and joy < joyMax){
		joy = joy + 10;
		if(joy > joyMax){
			joy = joyMax;	
		}
	}else if(joy>0){
	
		joy = joy - 2;
	}


	if(joy >= 50){
		sprite_index = sOldManHappy;	
	}else{
		sprite_index = sOldManIdle;
	}
	image_alpha = joy/joyMax;
}

alarm[0] = checkTimer;	