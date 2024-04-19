if (height <= 0 && atRest == false){
	lift = -lift * .45;
	//destroy
	//instance_destroy(id);
	//bounce
	height = 1;
	
	//stay on ground

	
	
	if(abs(lift) < 1){
		atRest = true;
		grav = 0;
		lift = 0;
		height = 0;
		speed = 0;
	}
}
height += lift;
lift -= grav;

if(image_index == 1){
	timer += 1;
	
	if timer >= 60{
		if timer mod 3 == 0 then{
			visible = not visible
		}//end if
	}//end if
	
	if timer >= 90{
		instance_destroy();
	}//end if
}//end if
