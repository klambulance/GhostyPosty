/// @description Insert description here
// You can write your code in this editor

entriesCreated = 0;
journalStartX = 0;
journalStartY = 0;
for(var i = 0; i < array_length(oGhosty.metPeopleArr); i++;){
	entry = instance_create_layer(x,y + 200*entriesCreated,"GUI",oJournalEntry);
	entriesCreated++;
}