/// @description Size variables and mode setup

w = display_get_gui_width();
h = display_get_gui_height();
h_half = h/2;//half of screen size

enum TRANS_MODE{//Enum used for to retrun a set of numbers ex. off = 0, next = 1 etc. 
	
	OFF,// not doing anything
	NEXT,// next room
	RESTART,// restart the game
	INTRO,// intro room
}

mode = TRANS_MODE.INTRO;
percent  = 1;
target = room;//specfic room  