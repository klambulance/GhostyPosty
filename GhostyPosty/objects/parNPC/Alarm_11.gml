/// @description Meet check
// You can write your code in this editor

if(!met){
	if(collision_circle(x,y,100,oGhosty,0,1)){
		met = true;
		oGhosty.metPeopleArr[array_length(oGhosty.metPeopleArr)] = asset_get_index(object_get_name(object_index));
	}else{
	}
}
	if(collision_circle(x,y,200,oGhosty,0,1)){
		ghostyNear = true;	show_debug_message(ghostyNear);
	}else{
		ghostyNear = false;	show_debug_message(ghostyNear);
	}
if(ghostyNear and prompt == noone){
	prompt = instance_create_layer(x,y-promptY,"GUI",oPrompt);show_debug_message("hey");
	
}

if(!ghostyNear and prompt != noone){
	instance_destroy(prompt);
	prompt = noone;
}

alarm[11] = meetTimer;