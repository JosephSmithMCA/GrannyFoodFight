//invincible
if (invincible > 0) {
	invincible -= 1;
}//end if


//movement/action vars
var throwFood	= keyboard_check_pressed(vk_space);
var pushedLeft  = keyboard_check(vk_left)
var pushedRight = keyboard_check(vk_right)
var pushedUp    = keyboard_check(vk_up)
var pushedDown  = keyboard_check(vk_down)
//speed
var xSpeed = (pushedRight - pushedLeft) * moveSpeed;
var ySpeed = (pushedDown - pushedUp) * moveSpeed;
//collision
move_and_collide(xSpeed, ySpeed, obj_collide);
var moving = (xSpeed != 0 || ySpeed != 0)
//poop
if (canPoop == false){
	//record last moving direction
		if xSpeed != 0 || ySpeed != 0{
			lastXspeed = xSpeed;
			lastYspeed = ySpeed;
		}
	}else{
		//use current direction so static food can be dropped
		lastXspeed = xSpeed;
		lastYspeed = ySpeed;
	}
 
 
	image_speed = 0;
 
if (throwFood == true && foodCount > 0) {
	
	var gruntChance = irandom(100);
	if(gruntChance < 16){
		audio_play_sound(snd_thrown,8 ,false, 1, 0, random_range(2,3))
	}//end if
	
	var foodId = instance_create_depth(x, y, depth, obj_food)
	
	audio_play_sound(snd_thrown,8 ,false, 1, 0, random_range(2,3))
	foodId.parent = id;
	foodId.hspeed = lastXspeed * 1.5;
	foodId.vspeed = lastYspeed * 1.5;

		if (foodId.hspeed == 0 && foodId.vspeed == 0){
		    foodId.image_index = 6;
		}

	foodCount -= 1;
 
	}//end if
 
	
 
//move granny
	if (moving){
		image_speed = .25
		if (xSpeed > 0){
			sprite_index = spr_granny_blue_right;
		}else if (xSpeed < 0){
			sprite_index = spr_granny_blue_left;
		}
 
 
		if (ySpeed > 0){
			sprite_index = spr_granny_blue_down;
		}else if (ySpeed < 0){
			sprite_index = spr_granny_blue_up;
		}//end if
	}else{
		image_speed = 0;
	}//end if