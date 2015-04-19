///cannon_missile_charge()

assert(is_descendant(obj_cannon));

if (missile == noone) {
    missile = instance_create(phy_position_x, phy_position_y, obj_missile);
    with (missile) {
        phy_active = false;
        cannon = other;
        col_cannon = other.col;
    }
    charge_start = get_timer();
    ds_queue_enqueue(missiles, missile);
}
