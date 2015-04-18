///cannon_missile_fire()

var impulse_size = fire_power * cannon_get_charge_power();
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
