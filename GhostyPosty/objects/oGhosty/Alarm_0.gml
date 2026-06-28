/// @description Insert description here
// You can write your code in this editor

soundChoice = round(irandom(3));

if(soundChoice == 1){
	audio_play_sound(sndGlum1,1,0);
}else if(soundChoice == 2){
	audio_play_sound(sndGlum2,1,0);	
}else if(soundChoice == 3){
	audio_play_sound(sndGlum3,1,0);	
}

alarm[0] = 500;