///spawn_ufo()

var planet = instance_find(obj_planet, 0);
assert(instance_exists(planet));

var angle = random(360);
var dist = planet.r * 4;
var pos_x = planet.phy_position_x + lengthdir_x(dist, angle);
var pos_y = planet.phy_position_y + lengthdir_y(dist, angle);

with (instance_create(pos_x, pos_y, obj_ufo)) {
    phy_rotation = -angle;
}
