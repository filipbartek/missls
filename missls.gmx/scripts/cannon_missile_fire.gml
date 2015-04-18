///cannon_missile_fire()

var charge_end = get_timer();
var charge_diff = charge_end - charge_start;
var impulse_size = charge_diff * fire_power;
var impulse_x = lengthdir_x(impulse_size, -phy_rotation);
var impulse_y = lengthdir_y(impulse_size, -phy_rotation);

with (missile) {
    phy_active = true;
    phy_rotation = other.phy_rotation;
    physics_apply_impulse(x, y, impulse_x, impulse_y);
    
    trail = instance_create(phy_position_x, phy_position_y, obj_trail);
    trail.col = other.col;
}

missile = noone;
