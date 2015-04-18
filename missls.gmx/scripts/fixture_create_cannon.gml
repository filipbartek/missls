///fixture_create_cannon(length, thickness, density)

var length = argument0;
var thickness = argument1;
var density = argument2;

var halfWidth = length / 2;
var halfHeight = thickness / 2;

var fix = physics_fixture_create();

// Shape
physics_fixture_set_box_shape(fix, halfWidth, halfHeight);

// Properties
physics_fixture_set_density(fix, density);
physics_fixture_set_friction(fix, 0.5);
physics_fixture_set_linear_damping(fix, 0);
physics_fixture_set_angular_damping(fix, 0);
physics_fixture_set_restitution(fix, 1);
physics_fixture_set_sensor(fix, false);
if (density == 0) {
    physics_fixture_set_kinematic(fix);
}
physics_fixture_set_awake(fix, true);

return fix;
