///cannon_missile_charge()

missile = instance_create(phy_position_x, phy_position_y, obj_missile);
with (missile) {
    phy_active = false;
    cannon = other;
}
charge_start = get_timer();
ds_queue_enqueue(missiles, missile);