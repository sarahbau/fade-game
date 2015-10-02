{
    randomize();
    MAXLEVEL = 6;
    if(level_id>MAXLEVEL){level_id=1;}
//    show_message("Should load level [" + string(level_id) + "]");
    with(obj_entrance){instance_destroy()};
    with(obj_torch){instance_destroy();};
    with(obj_key){instance_destroy();};
    with(obj_arrow){instance_destroy();};
    instance_create(0,0, obj_key);
    instance_create(0,0, obj_torch);
    var inst_ent = instance_create(0, 704, obj_entrance);
    var inst_exit= instance_create(1272,192, obj_exit);
    
    switch(level_id) {
        case 1:
//            show_message("On level 1");
            global.arrow_rotation = 0;
            global.arrow_offset_x = -32;
            global.arrow_offset_y = 16;
            obj_player.x = 416;
            obj_player.y = 64;
            obj_maze.sprite_index = spr_maze_1;
            with(inst_ent) {
                x=384;
                y=0;
                sprite_index = spr_door_h;
            }
            with(inst_exit) {
                x=1272;
                y=448;
                sprite_index = spr_door_v;
            }
            break;
        case 2:
//            show_message("On level 2");
            global.arrow_rotation = 0;
            global.arrow_offset_x = -32;
            global.arrow_offset_y = 16;
            obj_player.x = 32;
            obj_player.y = 736;
            obj_maze.sprite_index = spr_maze_2;
            with(inst_ent) {
                x=0;
                y=704;
                sprite_index = spr_door_v;
            }
            with(inst_exit) {
                x=1272;
                y=192;
                sprite_index = spr_door_v;
            }
            break;
        case 3:
//            show_message("On level 3");
            global.arrow_rotation = 0;
            global.arrow_offset_x = -32;
            global.arrow_offset_y = 16;
            obj_player.x = 32;
            obj_player.y = 96;
            obj_maze.sprite_index = spr_maze_3;
            with(inst_ent) {
                x=0;
                y=64;
                sprite_index = spr_door_v;
            }
            with(inst_exit) {
                x=1272;
                y=702;
                sprite_index = spr_door_v;
            }
            break;
        case 4:
//            show_message("On level 4");
            global.arrow_rotation = 180;
            global.arrow_offset_x = 16+sprite_get_width(spr_arrow);
            global.arrow_offset_y = 16+sprite_get_height(spr_arrow);
            obj_player.x = 15*64+32;
            obj_player.y = 64;
            obj_maze.sprite_index = spr_maze_4;
            with(inst_ent) {
                x=15*64;
                y=0;
                sprite_index = spr_door_h;
            }
            with(inst_exit) {
                x=0;
                y=11*64;
                sprite_index = spr_door_v;
            }
            break;
        case 5:
//            show_message("On level 5");
            global.arrow_rotation = 0;
            global.arrow_offset_x = -32;
            global.arrow_offset_y = 16;
            obj_player.x = 64;
            obj_player.y = 5*64+32;
            obj_maze.sprite_index = spr_maze_5;
            with(inst_ent) {
                x=0;
                y=5*64;
                sprite_index = spr_door_v;
            }
            with(inst_exit) {
                x=20*64-sprite_get_width(spr_door_v);
                y=11*64;
                sprite_index = spr_door_v;
            }
            break;
        case 6:
//            show_message("On level 6");
            global.arrow_rotation = 0;
            global.arrow_offset_x = -32;
            global.arrow_offset_y = 16;
            obj_player.x = 6*64+32;
            obj_player.y = 64;
            obj_maze.sprite_index = spr_maze_6;
            with(inst_ent) {
                x=6*64;
                y=0;
                sprite_index = spr_door_h;
            }
            with(inst_exit) {
                x=20*64-sprite_get_width(spr_door_v);
                y=1*64;
                sprite_index = spr_door_v;
            }
            break;
        
    }
    obj_player.ranOutsideRoom = 0;
}
