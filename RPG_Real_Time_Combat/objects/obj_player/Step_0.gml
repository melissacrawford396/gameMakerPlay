if (instance_exists(obj_dialog)) exit;

// horizontal: D=1, A=-1
// Gamemaker: x+1 --> right. x-1 <-- left
var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));

// vertical (y): S=1, W=-1
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));


move_and_collide(_hor * move_speed, _ver * move_speed, tilemap, 
undefined, undefined, undefined, move_speed, move_speed);

if (_hor != 0 or _ver != 0)
{
    // player is moving
    if (_ver > 0) sprite_index = spr_player_walk_down;
    else if (_ver < 0) sprite_index = spr_player_walk_up;
    else if (_hor > 0) sprite_index = spr_player_walk_right;
    else if (_hor < 0) sprite_index = spr_player_walk_left;
        
    // calculate the image_angle direction. Store for later
    facing = point_direction(0, 0, _hor, _ver);
}
else
{
    // player is not moving
    if (sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right;
    else if (sprite_index == spr_player_walk_left) sprite_index = spr_player_idle_left;
    else if (sprite_index == spr_player_walk_up) sprite_index = spr_player_idle_up;
    else if (sprite_index == spr_player_walk_down) sprite_index = spr_player_idle_down;
}

if (keyboard_check_pressed(vk_space)){
    // store reference so we can set rotation angle and damage
    var _inst = instance_create_depth(x, y, depth, obj_attack);
    _inst.image_angle = facing;
    _inst.damage *= damage;
}