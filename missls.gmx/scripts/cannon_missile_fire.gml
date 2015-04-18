///cannon_missile_fire()

var impulse_size = fire_power * (0.25 + (0.75 * cannon_get_charge_power()));
var impulse_x = lengthdir_x(impulse_size, -phy_rotation);
var impulse_y = lengthdir_y(impulse_size, -phy_rotation);

with (missile) {
    // Create dummy joints to prevent collision with cannon and base
    cannon = other.id;
    joint_cannon = physics_joint_friction_create(self, other,
        phy_position_x, phy_position_y,
        0, 0, false);
    joint_base = nojoint;
    if (instance_exists(other.base)) {
        base = other.base;
        joint_base = physics_joint_friction_create(self, other.base,
            phy_position_x, phy_position_y,
            0, 0, false);
    }
    col = other.col;
    trail_active = true;

    phy_active = true;
    phy_rotation = other.phy_rotation;
    physics_apply_impulse(phy_position_x, phy_position_y, impulse_x, impulse_y);
    physics_apply_angular_impulse(other.phy_angular_velocity / 1000);
    
    trail = instance_create(phy_position_x, phy_position_y, obj_trail);
    trail.col = other.col;
}

missile = noone;
