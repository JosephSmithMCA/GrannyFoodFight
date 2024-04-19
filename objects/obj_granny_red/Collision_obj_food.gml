if (other.atRest == true){
	foodCount += 1;
	instance_destroy(other);
}else{
	if (other.parent != id && invincible <= 0){
		life = life - other.damage;
		invincible = 90;
		instance_destroy(other);
		audio_play_sound(snd_hit,8 ,false, 1, .25);
	}//end if
}//end if