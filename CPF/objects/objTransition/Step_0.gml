/// @description Transition progression
if (mode != TRANS_MODE.OFF){
	if (mode == TRANS_MODE.INTRO){
		
		percent = max(0,percent - 0.05);//move slowly at a constant speed
	}
	
	else{
		
		percent = min(1.5, percent + 0.05);
	}

	if (percent == 1.5) || (percent == 0){
		
		switch (mode){
			case TRANS_MODE.INTRO:{
				mode = TRANS_MODE.OFF;
			break;
			}
			case TRANS_MODE.NEXT:{
				mode = TRANS_MODE.INTRO;
				room_goto_next();//goes to next room in order
			break;
			}
			case TRANS_MODE.RESTART:{
				game_restart();//restarts whole game			
			break;
			
		}
 	  }		
	}
}
