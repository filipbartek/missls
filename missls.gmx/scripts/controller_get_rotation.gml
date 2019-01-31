///controller_get_rotation()

assert(is_descendant(obj_controller_keyboard));
// TODO: Generalize for other types of controllers

var rotation = 0;

if (keyboard_check(key_left)) {
    rotation--;
}

if (keyboard_check(key_right)) {
    rotation++;
}

return rotation;
