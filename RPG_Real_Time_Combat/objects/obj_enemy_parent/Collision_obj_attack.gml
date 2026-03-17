// Will run when this enemy collides with the sword attack
if (alarm[1] < 0){
    hp -= other.damage;
    image_blend = c_red;
    kb_x = sign(x - other.x);
    kb_y = sign(y - other.y);
    alarm[1] = 20; // run for 20 frames
}


