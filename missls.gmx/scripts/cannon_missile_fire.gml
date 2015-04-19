///cannon_missile_fire()

assert(is_descendant(obj_cannon));

var impulse_size = fire_power * (0 + (1.0 * cannon_get_charge_power()));
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
    //col = other.col;
    trail_active = true;

    phy_speed_x = other.phy_speed_x;
    phy_speed_y = other.phy_speed_y;
    phy_angular_velocity = other.phy_angular_velocity;
    
    phy_active = true;
    
    physics_apply_impulse(phy_position_x, phy_position_y, impulse_x, impulse_y);
    
    if (TRAILS == TRAILS_OBJECTS) {
        trail = instance_create(phy_position_x, phy_position_y, obj_trail);
        trail.col = other.col;
        trail.missile = id;
    }
    
    global.missiles_fired++;
}

//physics_apply_impulse(phy_position_x, phy_position_y, -impulse_x * cannon_get_charge_power(), -impulse_y * cannon_get_charge_power());

missile = noone;
