with (obj_carry_data){
    // if obj doesn't exist, it won't run
    other.level = level;
    other.xp = xp;
    other.xp_require = xp_require;
    other.damage = damage;
    other.hp_total = hp_total;
    other.hp = hp_total;
    
    instance_destroy(); // kill the carry data instance, it's job is done
}