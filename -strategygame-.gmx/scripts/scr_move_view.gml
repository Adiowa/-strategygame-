///scr_move_view()

var offset = 30
//get input
var movecamright = keyboard_check(vk_right) || keyboard_check(ord("D"))
var movecamleft = keyboard_check(vk_left) || keyboard_check(ord("A"))
var movecamup = keyboard_check(vk_up) || keyboard_check(ord("W"))
var movecamdown = keyboard_check(vk_down) || keyboard_check(ord("S"))


//move
if (movecamright && view_xview[0]< 1120) {
    view_xview[0] += 10
}

if (movecamleft && view_xview[0] > 0) {
    view_xview[0] -= 10
}

if (movecamup && view_yview[0] > 0) {
    view_yview[0] -= 10
}

if (movecamdown && view_yview[0] < 935) {
    view_yview[0] += 10
}

//Create:
view_pan_speed=10
//Step:
if (mouse_x<=view_xview && view_xview[0] > 0)
view_xview-=view_pan_speed

if (mouse_x>=view_xview+view_wview - 10 && view_xview[0] < 1000)
view_xview+=view_pan_speed

if (mouse_y<=view_yview && view_yview[0] > 0)
view_yview-=view_pan_speed

if (mouse_y>=view_yview+view_hview && view_yview[0] < 1000)
view_yview+=view_pan_speed
