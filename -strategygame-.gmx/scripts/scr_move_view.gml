///scr_move_view()

//get input
var movecamright = keyboard_check(vk_right) || keyboard_check(ord("D")) || mouse_x == view_wview[0]
var movecamleft = keyboard_check(vk_left) || keyboard_check(ord("A"))
var movecamup = keyboard_check(vk_up) || keyboard_check(ord("W"))
var movecamdown = keyboard_check(vk_down) || keyboard_check(ord("S"))

//move

if (movecamright) {
    view_xview[0] += 4
}

if (movecamleft) {
    view_xview[0] -= 4
}

if (movecamup) {
    view_yview[0] -= 4
}

if (movecamdown) {
    view_yview[0] += 4
}
