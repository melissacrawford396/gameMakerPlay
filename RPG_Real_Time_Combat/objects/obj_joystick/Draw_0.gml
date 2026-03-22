
if(!using) exit; // if not using, exit
    
draw_set_alpha(0.5);
draw_circle(joy_x, joy_y, 100, false);

draw_set_alpha(0.3);
draw_circle(joy_x + move_x, joy_y + move_y, 50, false);

draw_set_alpha(1);





