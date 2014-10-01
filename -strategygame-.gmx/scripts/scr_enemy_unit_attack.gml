///scr_enemy_ship_attack()

// blend is only for testing
image_blend = c_red;

friction = .5;

if (instance_exists(foe) && foe != -1) {
    direction = point_direction(x, y, foe.x, foe.y);
    
    if (distance_to_point(foe.x, foe.y) > 100) {
        image_blend = c_white;
        state = 'chase';
    }
}
