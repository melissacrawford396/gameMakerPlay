if (alarm[0] < 0){
    hp -= other.damage;
    image_blend = c_red;
    alarm[0] = 60; 
    
    if (hp <= 0){
        // You have been defeated. Start over
        room_restart();
    }
}
