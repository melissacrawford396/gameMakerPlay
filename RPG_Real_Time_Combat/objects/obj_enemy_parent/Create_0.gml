target_x = x;
target_y = y;

// Run this after 60 frames (1 sec)
// Set new enemy target postition every 1 second
alarm[0] = 60;

tilemap = layer_tilemap_get_id("Tiles_Col");