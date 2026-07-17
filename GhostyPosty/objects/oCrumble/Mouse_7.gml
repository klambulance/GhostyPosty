/// @description Insert description here
// You can write your code in this editor
invIndex = fCheckArrayForObject(oGhosty.inventory, oSanger);

if(invIndex != 99){
	myItem = oGhosty.inventory[invIndex];
	myItem.sprite_index = myItem.unselected;
	myItem.pickedUp = false;
	myItem.consumed = true;
	oGhosty.inventory = fRemoveValueFromArray(oGhosty.inventory,invIndex);
	myItem.target = self;
}