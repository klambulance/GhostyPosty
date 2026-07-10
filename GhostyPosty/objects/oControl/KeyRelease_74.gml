/// @description Insert description here
// You can write your code in this editor
if(array_length(oGhosty.metPeopleArr)>0){
	if(journal == noone){
		journal = instance_create_layer(journalStartX,journalStartY,"GUI",oJournal);
		journal.journalStartX = journalStartX;
		journal.journalStartY = journalStartY;
		global.paused = true;
	}else{
		instance_destroy(journal);
		journal = noone;
		global.paused = false;
	}
}