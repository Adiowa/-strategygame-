///scr_ship_move

//remove idle state friction
friction = 0;

//move towards the target if it exists
if (instance_exists (target)) {
    motion_add(point_direction(x, y, target.x, target.y), acceleration);
    
    //delete the target when we reach it
    if (position_meeting(x, y, target)) {
        with (target) instance_destroy();
        state = 'idle';
    }
}

//don't go faster than max speed
if (speed > unitspeed) speed = unitspeed;
