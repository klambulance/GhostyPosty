/// @description Meet check
// You can write your code in this editor

if(!met){
	if(collision_circle(x,y,100,oGhosty,0,1)){
		met = true;
		oGhosty.metPeopleArr[array_length(oGhosty.metPeopleArr)] = asset_get_index(object_get_name(object_index));
	}else{
		alarm[11] = meetTimer;
	}
}
