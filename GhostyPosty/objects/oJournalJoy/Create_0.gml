/// @description Insert description here
// You can write your code in this editor
depth= -9999;
journalNumber = instance_number(oJournalEntry);

vill = oGhosty.metPeopleArr[journalNumber-1];

joy = vill.joy;
joyMax = vill.joyMax;

image_xscale = joy/joyMax;