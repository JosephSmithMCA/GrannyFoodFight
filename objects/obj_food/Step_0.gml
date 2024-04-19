	//check for collsion
var collisionId = collision_point(x, y, obj_collide, false, false);
//destroy self if collsion
if (collisionId != noone && height < 8){
	
	//backup
	
	x = xprevious;
	y = yprevious;
	
	//reverse direction
	
	hspeed = choose(-1,0,1) * .75;
	vspeed = choose(-1,1) * .75;
	lift = -lift * 1.1;
	
}//end if
//if hits the ground
if (height <= 0){
	atRest = true;
	//destroy
	//instance_destroy(id);
	//bounce
	//eight = 1;
	//lift = -lift * .5;
	//stay on ground
	lift = 0;
	height = 0;
	speed = 0;
}
height += lift;
lift -= grav;
 
//Wrap
if (x < 0){
	x = room_width;
}//end if
 
if (x > room_width){
	x = 0;
}
//y axis missing
 
 