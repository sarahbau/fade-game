{
    MAXLEVEL = 3;
    if(level_id>MAXLEVEL){level_id=1;}
    with(obj_entrance){instance_destroy()};
    with(obj_torch){instance_destroy();};
    instance_create(0,0, obj_key);
    instance_create(0,0, obj_torch);
    var inst_ent = instance_create(0, 704, obj_entrance);
    var inst_exit= instance_create(1272,192, obj_exit);
    
    switch(level_id) {
        case 1:
            with(obj_player) {
                x=416;
                y=32;
            }
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
            with(obj_player) {
                x=32;
                y=736;
            }
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
            with(obj_player) {
                x=32;
                y=96;
            }
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
        default:
            with(obj_player) {
                x=416;
                y=32;
            }
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
    }
    level_id++;
}
