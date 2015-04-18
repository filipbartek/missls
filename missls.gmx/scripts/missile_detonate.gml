///missile_detonate()

assert(is_descendant(obj_missile));

instance_create(phy_position_x, phy_position_y, obj_explosion);

instance_destroy();
