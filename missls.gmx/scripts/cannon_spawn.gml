///cannon_spawn()

assert(is_descendant(obj_controller));

// Spawn a cannon with a base
var angle = random(360);
var pivot_dist = global.planet.r + 20;
var pos_x = global.planet.phy_position_x + lengthdir_x(pivot_dist, angle);
var pos_y = global.planet.phy_position_y + lengthdir_y(pivot_dist, angle);

var base = instance_create(pos_x, pos_y, obj_base);
base.phy_rotation = -angle + 90;

var cannon_x = global.planet.phy_position_x + lengthdir_x(pivot_dist + 8, angle);
var cannon_y = global.planet.phy_position_y + lengthdir_y(pivot_dist + 8, angle);
cannon = instance_create(cannon_x, cannon_y, obj_cannon);
cannon.phy_rotation = -angle;
cannon.col = col;
cannon.image_blend = col;
cannon.base = base;
cannon.controller = id;

base.cannon = cannon;

cannon.joint_base = physics_joint_revolute_create(base, cannon,
    pos_x, pos_y, -120, 120, true,
    1000, 0, true, false);
