// If player is close enough, follow 
if (instance_exists(obj_player) && distance_to_object(obj_player) < distance_to_player)
{
    target_x = obj_player.x;
    target_y = obj_player.y;
}
else 
{
    // else --> go to random area around enemy
    target_x = random_range(xstart - 100, xstart + 100);
    target_y = random_range(ystart - 100, ystart + 100);
}

//reset alarm so it will run again
alarm[0] = 60;
