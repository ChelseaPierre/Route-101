///@description creating horizontal & vertical movement of collectables

//Horizontal
if (moveX != 0) { 
	if (place_meeting (x+moveX, y, objCollision)) {
		repeat (abs(moveX)){
			if(!place_meeting(x+sign(moveX), y, objCollision)) { x += sign(moveX);}
			else { break; }
			instance_destroy();//destroys object once collided with a collision block
		}
		moveX = 0;
	}
	
}

//Vertical
if (moveY != 0){
	if(place_meeting(x, y+moveY, objCollision)){
		repeat (abs (moveY)) {
			if (!place_meeting (x, y + sign(moveY), objCollision)) { y += sign(moveY); }
			else { break; }
			instance_destroy();//destroys object once collided with a collision block
		}
		moveY = 0;
	}
}

//applied movement
x += moveX;
y += moveY;

