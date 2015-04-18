///cannon_spawn()

// Call from obj_controller

// Spawn a cannon with a base
var angle = random(360);
var dist = global.planet.r + 20;
var pos_x = global.planet.phy_position_x + lengthdir_x(dist, angle);
var pos_y = global.planet.phy_position_y + lengthdir_y(dist, angle);

var base = instance_create(pos_x, pos_y, obj_base);
base.phy_rotation = -angle + 90;

cannon = instance_create(pos_x, pos_y, obj_cannon);
cannon.phy_rotation = -angle;
cannon.col = col;
cannon.image_blend = col;
cannon.base = base;

physics_joint_revolute_create(base, cannon, pos_x, pos_y, -120, 120, true,
    0, 0, false, false);
