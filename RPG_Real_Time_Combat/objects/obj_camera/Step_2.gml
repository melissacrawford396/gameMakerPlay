if(instance_exists(follow)) {
    // move smoothly towards the target
    var targetX = follow.x - view_w_half;
    var targetY = follow.y - view_h_half;
    
    
    // use Lerp for smoothness, or snap directly?
    x = lerp(x, targetX, 1);
    y = lerp(y, targetY, 1);
    
    //Update the camera view position 
    camera_set_view_pos(cam, x, y)
}
