if (current_message < 0) exit;
    
var _str = messages[current_message].msg;
var _len = string_length(_str);

if (current_char < _len)
{
    // normal speed
    current_char += char_speed;  
    
    if (keyboard_check_pressed(input_key)){
        // if you click space again then show the whole message
        current_char = _len;
    }
    
    draw_message = string_copy(_str, 0, current_char); // write text in bits
}
else if(keyboard_check_pressed(input_key))
{
    current_message++;
    if(current_message >= array_length((messages)))
    {
        instance_destroy();
        if (next_room) room_goto_next();
    }
    else
    {
        current_char = 0;
    }
}