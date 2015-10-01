// Static config variables
sprite = spr_torch_full;
sprite_empty = spr_torch_empty;
image_scale = 0.5;
x = view_wview + 300;
y = 50;

// The rest are dynamic
factor = global.fade_counter / global.fade_max_timer;
scale = 1.0 - factor;
height = sprite_get_height(sprite);
top_mod = height * scale;
y_mod = y + top_mod * image_scale;
h_mod = height * factor;

width = sprite_get_width(sprite);
subimg = 0;
top = 0;
left = 0;
colour = c_white;
alpha = 1;

draw_sprite_part_ext(sprite, subimg, left, top_mod, width, h_mod, x, y_mod, image_scale, image_scale, colour, alpha);

draw_sprite_part_ext(sprite_empty, subimg, left, top, width, height, x, y, image_scale, image_scale, colour, alpha);
