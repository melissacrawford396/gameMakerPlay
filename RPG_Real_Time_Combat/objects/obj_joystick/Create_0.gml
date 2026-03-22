joy_x = 0;
joy_y = 0;

move_x = 0;
move_y = 0;

using = false;
max_radius = 300; 

get_input = function(){
    //return normalized vals. Use with speed
    return {
        x: move_x / max_radius,
        y: move_y / max_radius
    }
}