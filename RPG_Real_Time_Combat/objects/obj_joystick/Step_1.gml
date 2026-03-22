if (mouse_check_button_pressed(mb_left)){
    joy_x = mouse_x;
    joy_y = mouse_y;
    
    move_x = 0;
    move_y = 0;
    
    using = true;
}

if (mouse_check_button_released(mb_left)){
    using = false;
    
    move_x = 0;
    move_y = 0;
}

if (using){
    move_x = mouse_x - joy_x;
    move_y = mouse_y - joy_y;
    
    // limit joystick movement to circle
    if(point_direction(0, 0, move_x, move_y) > max_radius) {
        var dir = point_direction(0, 0, move_x, move_y);
        move_x = lengthdir_x(max_radius, dir);
        move_y = lengthdir_y(max_radius, dir);
    }
    
}


