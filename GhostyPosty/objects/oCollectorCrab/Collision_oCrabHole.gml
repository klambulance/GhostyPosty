/// @description Insert description here
// You can write your code in this editor

if(target == oCrabHole){
	itemCarrying = collision_point(x,y,parSelectable,1,1);
	show_debug_message(itemCarrying);
	if(itemCarrying != noone){
		instance_destroy(itemCarrying);
	}
	instance_destroy();
}