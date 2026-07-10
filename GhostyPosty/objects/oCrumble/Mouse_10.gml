/// @description Insert description here
// You can write your code in this editor
if(!global.paused){
	for(var i=0; i < oGhosty.invCnt;i++;){
		oGhosty.inventory[i].sprite_index = oGhosty.inventory[i].selected;
	}
}