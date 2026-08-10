/// autism Insert description here
// You can write your code in this editor
nearNPC = collision_circle(x,y,100,parNPC,0,1);
if(nearNPC != noone){
	sprite_index = sGhostyMask;
}else{
	sprite_index = sGhostyIdle	
}

NPCNear = collision_circle(mouse_x,mouse_y,100,parInteractor,0,1);
if(NPCNear != noone  and prompt == noone){
	tempNPC = NPCNear;
	prompt = instance_create_layer(NPCNear.x,NPCNear.y-NPCNear.promptY,"GUI",oPrompt);
	prompt.promptOwner = NPCNear;
	state =  ghostyState.interacting;
}else{
}
	

	
alarm[1] = checkTimer;