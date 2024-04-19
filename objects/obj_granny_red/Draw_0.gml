//draw shadow
depth = -y

if invincible % 3 != 0 then exit;
draw_sprite(spr_shadow, 0, x, y)
//draw granny on top of shadow
draw_sprite(sprite_index, image_index, x, y)