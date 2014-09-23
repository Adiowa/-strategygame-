///scr_toggle_select(press_x,press_y,release_x,release_y)

//press

var press_x = argument0;
var press_y = argument1;

//release

var release_x = argument2;
var release_y = argument3;

if(press_x == release_x && press_y == release_y){
    if position_meeting(press_x,press_y,self){
        selected = true;
    }else{
        selected = false;
    }
}
// case, drag instances

var TopLeftBottomRight = (x > press_x && x < release_x && y > press_y && y < release_y);
var BottomLeftTopRight = (x > press_x && x < release_x && y < press_y && y > release_y);
var BottomRightTopLeft = (x < press_x && x > release_x && y < press_y && y > release_y);
var TopRightBottomLeft = (x < press_x && x > release_x && y > press_y && y < release_y);

if (TopLeftBottomRight || BottomLeftTopRight || BottomRightTopLeft || TopRightBottomLeft) {
    selected = true;
} else {
    selected = false;
}
