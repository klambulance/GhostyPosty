/// @description Insert description here
// You can write your code in this editor
depth=-9998;

journalNumber = instance_number(oJournalEntry);
vill = oGhosty.metPeopleArr[journalNumber-1];
if(vill == oCrumble){
	pic = sCrumbleMugshot;
}else if(vill == oOldMan){
	pic = sOldManMugshot;
}

picObject = instance_create_layer(x+36,y+36,"GUI",oJournalPic);
picObject.sprite_index = pic;
picObject = instance_create_layer(x+238,y+130,"GUI",oJournalJoy);
