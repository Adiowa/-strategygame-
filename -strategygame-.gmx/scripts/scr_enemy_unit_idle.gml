///scr_unit_enemy_unit_idle

//set friction
friction = .5;

if (foe != -1 && instance_exists(foe)) {
    if (distance_to_point(foe.x, foe.y) <= 256) {
        state = 'chase' //the chase is on!!
    }
}
