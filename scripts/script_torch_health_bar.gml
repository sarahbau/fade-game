// Static config variables
sprite = spr_torch_full;
subimg = 0;
imagescale = 0.5;
x = view_wview + 300;
y = 50;

// The rest are dynamic
scale = 1.0 - global.fade_counter / global.fade_max_timer;
height = sprite_get_height(sprite);
top = height * scale;
ymod = y + top * imagescale;

width = sprite_get_width(sprite);
left = 0;
colour = c_white;
alpha = 1;

draw_sprite_part_ext(sprite, subimg, left, top, width, height, x, ymod, imagescale, imagescale, colour, alpha);

sprite = spr_torch_empty;
top = 0;

draw_sprite_part_ext(sprite, subimg, left, top, width, height, x, y, imagescale, imagescale, colour, alpha);
