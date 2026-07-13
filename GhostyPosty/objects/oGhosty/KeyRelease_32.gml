/// @description Insert description here
// You can write your code in this editor
if(array_length(inventory) > 0){
	myItem = inventory[0];
	myItem.sprite_index = myItem.unselected;
	myItem.pickedUp = false;
	inventory = fRemoveValueFromArray(inventory,0);
	myItem.target = noone;
}