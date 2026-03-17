// horizontal: D=1, A=-1
// Gamemaker: x+1 --> right. x-1 <-- left
var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));

// vertical (y): S=1, W=-1
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

move_and_collide(_hor * move_speed, _ver * move_speed, tilemap);

