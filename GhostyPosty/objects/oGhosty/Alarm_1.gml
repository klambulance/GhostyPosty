/// autism Insert description here
// You can write your code in this editor

	if(collision_circle(x,y,100,parNPC,0,1)){
		sprite_index = sGhostyMask;
	}else{
		sprite_index = sGhostyIdle	
	}
	
	alarm[1] = checkTimer;