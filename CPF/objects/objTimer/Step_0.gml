if (time > 0) {
	
time = time - delta_time/1000000;//fix this

}

else {
	
	time = 0;
	show_message("GAME OVER");
	room_goto(roomTitleSc);
	
}
