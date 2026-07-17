/// @description Insert description here
// You can write your code in this editor

ghostySpeed = 8;

soundChoice = 0;
//alarm[0] = 5;

enum ghostyState{
	idle,
	changing,
	observed
}

inventory = noone;
invCnt = array_length(inventory);
invLimit = 4;

pebbleArr[0] = instance_create_layer(x-150,y,"Instances",oMovementPebble);
pebbleArr[1] = instance_create_layer(x-150,y,"Instances",oMovementPebble);
pebbleArr[2] = instance_create_layer(x-150,y,"Instances",oMovementPebble);
pebbleLim = 3;


outfits[0] = sGhostyIdle;
outfits[1] = sGhostyPostyIdle;

outfitsObserved[0] = sGhostyMask;
outfitsObserved[1] = sGhostyPostyMask;

state = ghostyState.idle;
outfit = sGhostyIdle;
checkTimer = 60;
alarm[1] = checkTimer;

wornHat = instance_create_layer(x,y,"Instances",oWornHat);
wornHat.ghosty = self;

nearNPC = noone;
metPeopleArr = "";
