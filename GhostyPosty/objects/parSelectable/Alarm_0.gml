/// @description Insert description here
// You can write your code in this editor

if(collectorCrab == noone){
	collectorCrab = instance_create_layer(oCrabHole.x,oCrabHole.y,"Instances", oCollectorCrab);
	collectorCrab.target = self;
}