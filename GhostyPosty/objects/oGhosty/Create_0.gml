/// @description Insert description here
// You can write your code in this editor

ghostySpeed = 3;

soundChoice = 0;
//alarm[0] = 5;

enum ghostyState{
	idle,
	changing,
	observed,
	interacting
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
tempNPC = noone;
prompt = noone;
metPeopleArr = "";

ghostToMouse = 50;
zoomF = 1;
/*
width = sprite_width;
height = sprite_height;

ghostSize = 48;
ghostSep = 68;

vertex_format_begin();
vertex_format_add_position();
vertex_format_add_colour();
vertex_format_add_custom(vertex_type_float1, vertex_usage_texcoord);
format = vertex_format_end();

vbuff = vertex_create_buffer();

vertex_begin(vbuff,format);
	fVertexGhost(vbuff, x, y+height, ghostSize, height, 1);
vertex_end(vbuff);

u_time = shader_get_uniform(shdWobbler,"u_time");
time = 0;*/
