if (other.atRest == true && other.foodCount > 0){
	//remove food from chest & give to granny
	foodCount += other.foodCount;
	//switch to chest open sprite
	other.image_index = 1;
	//remove food from chest
	other.foodCount = 0;
}//end if