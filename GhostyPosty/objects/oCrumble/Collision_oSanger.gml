/// @description Insert description here
// You can write your code in this editor

joy = fAddJoy(joy, joyMax, sandwichJoy);

sndIndex = irandom(array_length(eatingSounds)-1);
eatSound = eatingSounds[sndIndex];
show_debug_message(sndIndex);
audio_play_sound(eatSound,1,0);

instance_destroy(other);
