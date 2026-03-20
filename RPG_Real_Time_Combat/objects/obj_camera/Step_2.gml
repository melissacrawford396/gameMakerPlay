if(instance_exists(follow)) {
    // move smoothly towards the target
    var targetX = follow.x - view_w_half;
    var targetY = follow.y - view_h_half;
    
    
    // use Lerp for smoothness, or snap directly?
    x = lerp(x, targetX, 1);
    y = lerp(y, targetY, 1);
    
    // clamp camera - I think i need to move this to the player? 
        
    x = clamp(x, 0, room_width - view_w_half);
    y = clamp(y, 0, room_height - view_h_half);
   
    //Update the camera view position 
    camera_set_view_pos(cam, x, y)
}


//
//var _cam = view_camera[0];
//var _cam_width = camera_get_view_width(_cam);
//var _cam_height = camera_get_view_height(_cam);
//
//var _cam_x = x - _cam_width/2;
//var _cam_y = y - _cam_height/2;
//
//_cam_x = clamp(_cam_x, 0, room_width - _cam_width);
//_cam_y = clamp(_cam_y, 0, room_height - _cam_height);
//
//camera_set_view_pos(_cam, _cam_x, _cam_y);
