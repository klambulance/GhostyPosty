/// autism Insert description here
// You can write your code in this editor
	nearNPC = collision_circle(x,y,100,parNPC,0,1);
	if(nearNPC != noone){
		sprite_index = sGhostyMask;
	}else{
		sprite_index = sGhostyIdle	
	}
	
	
	
	alarm[1] = checkTimer;