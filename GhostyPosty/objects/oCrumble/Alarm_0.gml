/// @description Insert description here
// You can write your code in this editor
if(!global.paused){
	if(joy>0){
	
		joy = joy - 2;
	}


	if(joy >= 50){
		sprite_index = sCrumbleHappy;	
	}else{
		sprite_index = sCrumbleIdle;
	}
	image_alpha = joy/joyMax;
}
alarm[0] = checkTimer;	