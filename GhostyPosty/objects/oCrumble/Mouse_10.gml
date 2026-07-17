/// @description Insert description here
// You can write your code in this editor
if(!global.paused){
	for(var i=0; i < oGhosty.invCnt;i++;){
		for(var j=0; j < array_length(interestingItems); j++;){
			if(interestingItems[j] ==  asset_get_index(object_get_name(oGhosty.inventory[i].object_index))){
				oGhosty.inventory[i].sprite_index = oGhosty.inventory[i].selected;
				
			}
		}
	}
}