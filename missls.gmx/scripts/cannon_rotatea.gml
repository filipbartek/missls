///cannon_rotate(dir)

//  1: right
// -1: left

assert(is_descendant(obj_cannon));

var rotation_dir = argument0;

physics_apply_torque(rotation_dir * rotation_speed);
