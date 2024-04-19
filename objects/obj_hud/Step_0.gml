timer += 1;

if(timer > 600) {
	
	var chestCount = instance_number(obj_chest)
	
	if(chestCount < 3 && obj_granny_red.foodCount < 4 || obj_granny_blue.foodCount < 4){
	
	var chestx = irandom_range(32, room_width - 32);
	var chesty = irandom_range(48, room_height - 48);
	instance_create_depth(chestx, chesty, -2000, obj_chest)
	
	
	}//end if
	timer = 0;
}//end if