//draw shadow
draw_sprite(spr_shadow_small, 0, x, y);
//draw food above shadow
draw_sprite(sprite_index, image_index, x, y - height + 4);
 
depth = -y;