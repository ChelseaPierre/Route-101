/**
* When keyboard Key 'D' is pressed sprite will move right at set speed.
*/
if (keyboard_check(ord("D")) && place_free(x + cSpd, y)) {
	x += gSpeed;
	image_speed = gSpeed / 3;
	sprite_index = sprPikaRight;
}

/**
* When keyboard Key 'A' is pressed sprite will move left at set speed.
*/
if (keyboard_check(ord("A")) && place_free(x - cSpd, y)) {
	x -= gSpeed;
	image_speed = gSpeed / 3;
	sprite_index = sprPikaLeft;
}

/**
* When keyboard Key 'S' is pressed sprite will move down at set speed.
*/
if (keyboard_check(ord("S")) && place_free(x, y + cSpd)) {
	y += gSpeed;
	image_speed = gSpeed / 3;
	sprite_index = sprPikaDown;
}

/**
* When keyboard Key 'W' is pressed sprite will move up at set speed.
*/
//keyboard_check_direct(cr_uparrow)
if (keyboard_check(ord("W")) && place_free(x, y - cSpd)) {
	y -= gSpeed;
	image_speed = gSpeed / 3;
	sprite_index = sprPikaUp;
}
/**
* When objPika is idle (not moving) object will remain idle
*/
if (keyboard_check(vk_nokey)) {
	image_speed = 0;
	image_index = 0;
	gSpeed = 3;
}
