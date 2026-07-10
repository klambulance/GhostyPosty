/// @description Insert description here
// You can write your code in this editor

if(distance_to_object(oGhosty) < 150 and !pickedUp and oGhosty.invCnt < oGhosty.invLimit){
	oGhosty.inventory[oGhosty.invCnt] = self;
	oGhosty.invCnt++;
	pickedUp = true;
}