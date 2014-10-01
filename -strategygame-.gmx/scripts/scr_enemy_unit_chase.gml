///scr_unit_chase

//let loose the unit
friction = 0;

//move towards foe if it exists
if(instance_exists(foe)) {
    //attack the foe when we reach it
    if (distance_to_point(foe.x, foe.y) <= 64) {
        state = 'attack'
    } else {
        motion_add(point_direction(x, y, foe.x, foe.y), acceleration);
        
    }
}

//speedlimiter
if (speed > unitspeed) speed = unitspeed;
