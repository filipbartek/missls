///controller_cannon_spawn()

assert(is_descendant(obj_controller));

// Spawn a cannon with a base

var planet = instance_find(obj_planet, 0);
if (!instance_exists(planet)) {
    show_debug_message("No planet to spawn on.");
    exit;
}

var angle = random(360);
var pivot_dist = planet.r + global.model_base.scale;
var pivot_pos_x = planet.phy_position_x + lengthdir_x(pivot_dist, angle);
var pivot_pos_y = planet.phy_position_y + lengthdir_y(pivot_dist, angle);

var base_pos_x = planet.phy_position_x + lengthdir_x(planet.r, angle);
var base_pos_y = planet.phy_position_y + lengthdir_y(planet.r, angle);

var base = instance_create(base_pos_x, base_pos_y, obj_base);
base.phy_rotation = -angle;

//var cannon_x = planet.phy_position_x + lengthdir_x(pivot_dist + 8, angle);
//var cannon_y = planet.phy_position_y + lengthdir_y(pivot_dist + 8, angle);
cannon = instance_create(pivot_pos_x, pivot_pos_y, obj_cannon);
cannon.phy_rotation = -angle;
cannon.col = col;
cannon.image_blend = col;
cannon.base = base;
cannon.controller = id;

base.cannon = cannon;

cannon.joint_base = physics_joint_revolute_create(base, cannon,
    pivot_pos_x, pivot_pos_y, -90, 90, true,
    1000, 0, true, false);
