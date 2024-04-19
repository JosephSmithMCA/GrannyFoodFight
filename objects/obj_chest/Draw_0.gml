//draw shadow
depth = -y;

draw_sprite(spr_shadow, 0, x, y);
//draw food above shadow
draw_sprite(sprite_index, image_index, x, y - height + 4);
 
