messages = [];
current_message = -1; // dialog hasn't started yet
current_char = 0; // typewriter effect
draw_message = ""; // don't draw whole string at once

char_speed = 0.5;
input_key = vk_space;

gui_w = display_get_gui_width();
gui_h = display_get_gui_height();