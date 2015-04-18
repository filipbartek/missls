///cannon_rotate(dir)

//  1: right
// -1: left

var rotation_dir = argument0;

physics_apply_torque(rotation_dir * rotation_speed);
