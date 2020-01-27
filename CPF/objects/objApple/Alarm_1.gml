/// @desc For random item spawns

//var idle = choose(0,1);
//if (idle == false){
//instance_create_depth(x,y, 0, objApple);
//}
//alarm[1] = random_range(1.5,4);

while (instance_number(objApple)<=40){
	var randx = random(room_width);
	var randy = random(room_height);
	if (position_empty(randx, randy)){
	
			instance_create_depth(randx, randy, 0, objApple);
			instance_create_depth(randx, randy, 0, objBolt);
			instance_create_depth(randx, randy, 0, objGround);	
			instance_create_depth(randx, randy, 0, objPecha);
		    instance_create_depth(randx, randy, 0, objKethcup);	
	}

}alarm[1] = random_range(2,20);